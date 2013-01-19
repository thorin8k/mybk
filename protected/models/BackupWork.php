<?php

/**
 * This is the model class for table "backup_work".
 *
 * The followings are the available columns in table 'backup_work':
 * @property integer $id
 * @property string $desc
 * @property string $min
 * @property string $hour
 * @property string $day
 * @property string $month
 * @property string $weekday
 * @property string $afected_dbs
 * @property string $active
 */
class BackupWork extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return BackupWork the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'backup_work';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('desc', 'required'),
			array('id,active,sendToDropbox,type', 'numerical', 'integerOnly'=>true),
			array('desc', 'length', 'max'=>80),
			array('afected_dbs', 'length', 'max'=>200),
			array('min, hour, day, month, week_day', 'length', 'max'=>8),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, desc, date_created,afected_dbs,active', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
                    
			'types' => array(self::BELONGS_TO, 'ExecTypes', 'type'),
			'logs' => array(self::HAS_MANY, 'BackupWorkLog', 'backup_work_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'Id',
			'desc' => 'Description',
			'types.value' => 'Type',
			'afected_dbs' => 'Databases',
			'active' => 'Active',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('desc',$this->desc,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
        
        public function getNextExecutionDate(){
            $result="";
            switch($this->type){
                case "0";
                    $result = "Daily";
                    break;
                case "1";
                    $result = "Weekly";
                    break;
                case "2";
                    $result = "Monthly";
                    break;
                case "3";
                    $result = "Yearly";
                    break;
            }
            
            return $result;
        }
        
        public function getDatabaseNameByHash(){
            $data = Utils::listAllDatabases();
            $modelDbs = explode(',',$this->afected_dbs);
            $result = "";
            foreach($modelDbs as $selDb){
                foreach($data as $db){
                    if($db['id'] == $selDb){
                        $result .= $db['Database'].', ';
                    }
                }
            }
            return substr($result,0, -2);
        }
        
        protected function afterSave(){
            parent::afterSave();
            Utils::updateCronJobs();

        }
}