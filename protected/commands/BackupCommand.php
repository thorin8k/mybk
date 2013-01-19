<?php
class BackupCommand extends CConsoleCommand
{
    public function actionIndex($bkId){
        $model = BackupWork::model()->findByPk($bkId);
        //get db list
        $data = Utils::listAllDatabases();
        //Filter only selected dbs
        $filterDB = Utils::filterDbList($data, $model->afected_dbs);
        //dump dbs
        $result = Utils::dumpDatabases($filterDB,$model->desc, $model->sendToDropbox);
        
        $log = new BackupWorkLog();
        $log->backup_work_id = $bkId;
        $log->date_exec = date('Ymd');
        $log->status_messages = $result;
        //handle errors and log
        $log->save();
        
    }
}
?>
