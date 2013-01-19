<?php
class Utils{
    
    
    /**
     *
     *  Transforms the date from db to GUI or from GUI to db
     *
     *  dd/mm/yyyy
     * @param <type> $fecha
     * @return <type> parsed Date <string>
     */
    public static function parseDate($fecha) {
       
        if (strlen($fecha)==8){
            if (($fecha == "") or ($fecha == "0000-00-00") or ($fecha == "NULL")){
                return "";
            }else{
                return date("d/m/Y",strtotime($fecha));
            }
        }else{
            if ($fecha<>""){
               $trozos=explode("/",$fecha,3);
               return "".$trozos[2].$trozos[1].$trozos[0]."";
            }else{
                return "";
            }
        }
    }
    
    
    public static function SendToDropbox($filename,$filePath){
        $oauth = new Dropbox_OAuth_PEAR(Yii::app()->params['consumerKey'], Yii::app()->params['consumerSecret']);
        
        $tokens = self::loadConfigTokens();
        $oauth->setToken($tokens);
        
        $dropbox = new Dropbox_API($oauth);
        $dropbox->putFile($filename, $filePath);
    }
    /***
     * Devuelve las instrucciones javascript necesarias para manejar y rellenar las ventanas modales mediante ajax.
     * 
     * @param $functionName -> nombre de la funcion javascript que se va a generar
     * @param $requestUrl -> direccion('controlador/action') al que se va a realizar la petición
     * @param $failureJSActions -> instrucciones JS a realizar si el método del controlador devuelve failure
     * @param $successJSActions -> instrucciones Js a realizar si el método del controlador devuelve success
     */
    public static function CreateAjaxReturnFunction($functionName,$requestUrl,$failureJSActions,$succesJSActions,$params="$(this).serialize()",$type='post'){
        echo '<script type="text/javascript">';

        echo 'function '.$functionName.'{';
        echo 'var params ='.$params.';';
        echo CHtml::ajax(array(
                'url'=>array($requestUrl),
                'data'=>"js:params",
                'type'=>$type,
                'dataType'=>'json',
                'success'=>"function(data){
                    if(typeof(data) == 'object'){
                        if(data.status == 'failure'){
                            $failureJSActions                  
                        }else if(data.status == 'success'){
                            $succesJSActions
                        }else if(data.status == 'error'){
                            alert(data.div);
                        }
                    }else{
                        alert('La solicitud efectuada no ha devuelto ninguna información.');
                    }
               }",
                'error'=>"function(data,err,httpErr){
                    //access denied
                    if(data.status == 403){
                        var returnData = eval('('+data.responseText+')');
                        if(returnData.status == 'denied'){
                            alert(returnData.div);
                        }
                    }else{
                        //possible session expired
                        if(err == 'parsererror'){
                            alert('Puede que su sesión haya expirado. Vuelva a iniciar sesión y si el problema persiste contacte con el administrador. La página se actualizará para mayor seguridad.');
                            //setTimeout(\"window.location.reload()\",3600);
                        }else{
                            alert('Ha ocurrido un error con la solicitud efectuada, vuelva a intentarlo y si el problema persiste contacte con el administrador.');
                        }
                    }
                }",
            ));

          echo '      return false; }
        </script>';
    }
    
    
    public static function RemoveDirContent($dir){
        
        $d = dir($dir);
        while($entry = $d->read()) {
            if ($entry!= "zipfolder" &&$entry!= "." && $entry!= ".." && $entry!= ".svn") {
                unlink($dir.$entry);
            }
        }
        $d->close();
    }
    
    public static function dumpDatabases($array,$workDesc = 'instants',$sendToDropbox = false){
        //Recorrer y realizar un backup de cada una de las bd presentes en $ARRAY
        $path = Yii::app()->basePath . "/..".Config::getConfig(Config::BKPath).'/'.$workDesc.'/'.date('Ymdhi').'/';
        if (!is_dir($path)) {
            self::createPath($path);
            chmod(substr($path, 0, strrpos($path, '/', -2) + 1 ), 0777);
            chmod($path, 0777);
        }
        $server = Config::getConfig(Config::DBHost);
        $usern = Config::getConfig(Config::DBUser);
        $userp = Config::getConfig(Config::DBPwd);
        $result_message = "";
        foreach($array as $db){            
            exec('mysqldump --user='.$usern.' --password='.$userp.' --host='.$server.' -B '.$db.' > '.$path.$db.'.sql');
            chmod($path.$db.'.sql', 0777);
            $zip = new ZipArchive();
            $zip->open($path.$db.'.zip', ZipArchive::OVERWRITE);
            $zip->addFile($path.$db.'.sql', $db.'.sql');
            $zip->close();
            chmod($path.$db.'.zip', 0777);
            unlink($path.$db.'.sql');
            $result_message .= 'Backup of: '.$db.' in '.$path.$db.'.zip';
            if($sendToDropbox){
                Utils::SendToDropbox(Config::getConfig(Config::DBPPath)."/".$workDesc.'/'.date('Ymdhi').'/'.$db.'.zip', $path.$db.'.zip');
                $result_message .= 'Sended To DBP';
            }
            $result_message .= '<br/>';
        }
        return $result_message;
    }
    
    public static function listAllDatabases(){
        $data = array();
        $dbList = Yii::app()->db->createCommand("show databases;")->queryAll();
        //obtener todas las bd y almacenarlas en un array asociativo
        //se utiliza un hash crc32 de 8 caracteres en función del nombre de  la bd
        //para su identificación
        foreach ($dbList as $key=>$db) {
            $data[] = array('id'=>hash('crc32',$db['Database']),'Database'=> $db['Database']);
        }
        return $data;
    }
    
    public static function filterDbList($data,$filters){
        $filterDB = array();
        foreach ($data as $db) {
            if(in_array($db['id'],explode(',',$filters))){
                $filterDB[] = $db['Database'];
            }
        }
        return $filterDB;
    }
    
    public static function updateCronJobs(){
        $tasks = BackupWork::model()->findAll();
        $cron = new Crontab('cronbackup');
        $cron->eraseJobs();
        foreach($tasks as $task){
            if($task->active){
                $cron->addApplicationJob('protected/yiic', 'backup', array('--bkId='.$task->id), $task->min, $task->hour, $task->day, $task->month, $task->week_day);
            }
        }
        
        $cron->saveCronFile(); // save to my_crontab cronfile

        $cron->saveToCrontab(); // adds all my_crontab jobs to system (replacing previous my_crontab jobs)

        
    }
    
    public static function loadConfigTokens(){
        $tokens = array();
        $tokens['token'] = Config::getConfig(Config::DBPToken);;
        $tokens['token_secret'] = Config::getConfig(Config::DBPSecret);

        return $tokens;
    }

    public static function setConfigTokens($token,$secret){
        Config::addOrSetConfig(Config::DBPToken, $token);
        Config::addOrSetConfig(Config::DBPSecret, $secret);
    }
    
    public static function createPath($path) {
        if (is_dir($path)) return true;
        $prev_path = substr($path, 0, strrpos($path, '/', -2) + 1 );
        $return = self::createPath($prev_path);
        return ($return && is_writable($prev_path)) ? mkdir($path) : false;
    }
}
?>
