<?php
class Utils{
    public static function SendToDropbox($filePath){
        //$oauth = new Dropbox_OAuth_PEAR(Yii::app()->params['consumerKey'], Yii::app()->params['consumerSecret']);
        //
        //$tokens = $this->loadConfigTokens();
        //$oauth->setToken($tokens);
        //
        //$dropbox = new Dropbox_API($oauth);
        //$dropbox->putFile("pr.txt", "./temp/pr.txt")
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
    
    public static function Zip($source, $destination){

        $zip = new ZipArchive();
        if (!$zip->open($destination, ZIPARCHIVE::CREATE)) {
            return false;
        }

        $source = str_replace('\\', '/', realpath($source));

        if (is_dir($source) === true)
        {
            $files = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($source), RecursiveIteratorIterator::SELF_FIRST);

            foreach ($files as $file)
            {
                $file = str_replace('\\', '/', $file);

                // Ignore "." and ".." folders
                if( in_array(substr($file, strrpos($file, '/')+1), array('.', '..')) )
                    continue;

                $file = realpath($file);

                if (is_dir($file) === true)
                {
                    $zip->addEmptyDir(str_replace($source . '/', '', $file . '/'));
                }
                else if (is_file($file) === true)
                {
                    $zip->addFromString(str_replace($source . '/', '', $file), file_get_contents($file));
                }
            }
        }
        else if (is_file($source) === true)
        {
            $zip->addFromString(basename($source), file_get_contents($source));
        }

        return $zip->close();
    }
}
?>
