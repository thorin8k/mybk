<?php

class BackupWorkController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			//'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			/*array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','create', 'delete'),
				'users'=>array('*'),
			),*/
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new BackupWork;

                $data = Utils::listAllDatabases();
                $gridDataProvider = new CArrayDataProvider($data,array('pagination'=>false));
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
                
		if(isset($_POST['BackupWork']))
		{
			$model->attributes=$_POST['BackupWork'];
                        $time = $model->hour;
                        $model->hour = substr($time,0,strpos($time,':'));
                        $model->min = substr($time,strpos($time,':')+1);
			if($model->save())
				$this->redirect(array('admin','id'=>$model->id));
		}
		$this->render('create',array(
                        'gridDataProvider'=>$gridDataProvider,
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);
                $data = Utils::listAllDatabases();
                $gridDataProvider = new CArrayDataProvider($data,array('pagination'=>false));
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['BackupWork']))
		{
			$model->attributes=$_POST['BackupWork'];
                        $time = $model->hour;
                        $model->hour = substr($time,0,strpos($time,':'));
                        $model->min = substr($time,strpos($time,':')+1);
			if($model->save())
				$this->redirect(array('admin','id'=>$model->id));
		}
                $model->hour = $model->hour.":".$model->min;

		$this->render('update',array(
                        'gridDataProvider'=>$gridDataProvider,
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$this->actionAdmin();
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new BackupWork('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['BackupWork']))
			$model->attributes=$_GET['BackupWork'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return BackupWork the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=BackupWork::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param BackupWork $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='backup-work-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
        
        public function actionExecute(){
            if(isset($_POST["bk_id"])){
                $model = BackupWork::model()->findByPk($_POST["bk_id"]);
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
}
