<?php

class SiteController extends Controller
{
        
	public $layout='//layouts/column2';
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
		$this->render('backup');
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