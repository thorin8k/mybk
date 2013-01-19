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
                if(isset($_POST['key_cfg']) && isset($_POST['value'])){
                    $keys = $_POST['key_cfg'];
                    $values = $_POST['value'];
                    
                    for ($index = 0; $index < count($keys); $index++) {
                        Config::addOrSetConfig($keys[$index], $values[$index]);
                    }
                }           
            
                if(isset($_GET['revoke']) && $_GET['revoke'] == 1){
                    Config::addOrSetConfig(Config::DBPStatus,1);
                }
		$state = 0;
                $tokens = array();
                $state = Config::getConfig(Config::DBPStatus);
                $tokens = Utils::loadConfigTokens();
                if(empty($state) || empty($tokens)){
                    Config::addOrSetConfig(Config::DBPStatus,1);
                    $state=1;
                }
                //End Dropbox authorization
                
		$this->render('config',array('state'=>$state,'tokens'=>$tokens ));
	}

	public function actionBackup()
	{
            $data = Utils::listAllDatabases();
            
            $errors = "";
            if(isset($_GET['dobk'])){
                //Filter only selected dbs
                $filterDB = Utils::filterDbList($data, $_GET['bkids']);
                //dump dbs
                if(!empty($filterDB)){
                    Utils::dumpDatabases($filterDB,'instant',$_GET['dropbox']);
                }else{
                    echo CJSON::encode(array(
                        'status'=>'failure',
                        'div'=> 'No databases selected.',
                    ));
                exit;
                }
                //show success
                echo CJSON::encode(array(
                        'status'=>'success',
                        'div'=> 'Backup created in instants folder. Inside your configured BK Folder.',
                    ));
                exit;
            }

            $gridDataProvider = new CArrayDataProvider($data,array('pagination'=>false));
            $this->render('backup',array('gridDataProvider'=>$gridDataProvider,'errors'=>$errors));
	}
        
        
}