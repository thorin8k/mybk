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
        /**
         * Configuration Screen
         * 
         */
	public function actionConfig()
	{       //Dropbox authorization
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
                //End Dropbox authorization
                
		$this->render('config',array('state'=>$state,'tokens'=>$tokens ));
	}

	public function actionBackup()
	{
            $data = array();
            //TODO Get data from config
            //$connection=new CDbConnection($dsn,$username,$password);
            //$connection->active=true;
            //$dbList = $connection->createCommand("show databases;")->queryAll();
            
            $dbList = Yii::app()->db->createCommand("show databases;")->queryAll();
            //obtener todas las bd y almacenarlas en un array asociativo
            //se utiliza un hash crc32 de 8 caracteres en función del nombre de  la bd
            //para su identificación
            foreach ($dbList as $key=>$db) {
                $data[] = array('id'=>hash('crc32',$db['Database']),'Database'=> $db['Database']);
            }
            $errors = "";
            if(isset($_GET['dobk'])){
                $filterDB = $this->filterDbList($data, $_GET['bkids']);
                Utils::dumpDatabases($filterDB);
                
                echo CJSON::encode(array(
                        'status'=>'success',
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
        
        
        
        private function filterDbList($data,$filters){
            $filterDB = array();
            foreach ($data as $db) {
                if(in_array($db['id'],explode(',',$filters))){
                    $filterDB[] = $db['Database'];
                }
            }
            return $filterDB;
        }
}