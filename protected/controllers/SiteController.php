<?php

class SiteController extends Controller
{
        
	public $layout='//layouts/column1';
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('index');
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	public function actionConfig()
	{
                if(isset($_GET['revoke']) && $_GET['revoke'] == 1){
                    Config::addOrSetConfig("dropState",1);
                }
		$state = 0;
                $tokens = array();
                $state = Config::getConfig("dropState");
                $tokens = $this->loadConfigTokens();
                if(empty($state) || empty($tokens)){
                    Config::addOrSetConfig("dropState",1);
                    $state=1;
                }
		$this->render('config',array('state'=>$state,'tokens'=>$tokens ));
	}

	public function actionBackup()
	{
            $data = array();
            $dbList = Yii::app()->db->createCommand("show databases;")->queryAll();
            foreach ($dbList as $key=>$db) {
                $data[] = array('id'=>$key,'Database'=> $db['Database']);
            }
            $errors = "";
            if(isset($_GET['dobk'])){
                $db = new MYSQL_DUMP;
                $db->dbhost = 'localhost';
                $db->dbuser = 'root';
                $db->dbpwd = '1';
                $db->backupsToKeep = 30;
                $db->showDebug = false;
                $db->backupDir = './temp/backups/';
                $db->ignoreDatabases = array_diff_key($data,explode(',',$_GET['bkids']));
                //$db->ignoreDatabases = array('test','mysql','performance_schema','phpmyadmin');
                //$db->emptyList = array('largedb.large_table1','largedb.cachetable');
                $status ="success";
                if(!$db->dumpDatabases()){
                    $errors .= $db->errorMsg;
                    $status= 'failure';
                }
                echo CJSON::encode(array(
                        'status'=>$status,
                        'div'=> $errors,
                    ));
                exit;
            }

            $gridDataProvider = new CArrayDataProvider($data,array('pagination'=>false));
            $this->render('backup',array('gridDataProvider'=>$gridDataProvider,'errors'=>$errors));
	}
        
        

        public function loadConfigTokens(){
            $tokens = array();
            $tokens['token'] = Config::getConfig('dropToken');;
            $tokens['token_secret'] = Config::getConfig('dropTokenSec');

            return $tokens;
        }

        public function setConfigTokens($token,$secret){
            Config::addOrSetConfig('dropToken', $token);
            Config::addOrSetConfig('dropTokenSec', $secret);
        }
}