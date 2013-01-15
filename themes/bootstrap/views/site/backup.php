<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name . ' - BackUp';
$this->breadcrumbs=array(
	'About',
);
?>
<h2>Backup</h2>

<p>Selecciona las tablas de las cuales se realizará un backup</p>

<?php 
$data = array();
$dbList = Yii::app()->db->createCommand("show databases;")->queryAll();
foreach ($dbList as $key=>$db) {
    $data[] = array('id'=>$key,'Database'=> $db['Database']);
}
$gridDataProvider = new CArrayDataProvider($data);
$this->widget('bootstrap.widgets.TbGridView', array(
    'type'=>'striped bordered condensed',
    'dataProvider'=>$gridDataProvider,
    'template'=>"{items}",
    'columns'=>array(
        array('name'=>'Database', 'header'=>'Bases de Datos'),
        //array(
            //'class'=>'bootstrap.widgets.TbButtonColumn',
          //  'htmlOptions'=>array('style'=>'width: 50px'),
        //),
    ),
));

$oauth = new Dropbox_OAuth_PEAR(Yii::app()->params['consumerKey'], Yii::app()->params['consumerSecret']);

$tokens = array();
$cfg = Config::model()->find('key_cfg = "dropToken"');
$cfgSec = Config::model()->find('key_cfg = "dropTokenSec"');
if(!empty($cfg) && !empty($cfgSec)){
    $tokens['token'] = $cfg->value;
    $tokens['token_secret'] = $cfgSec->value;
}
$oauth->setToken($tokens);

$dropbox = new Dropbox_API($oauth);
$dropbox->putFile("pr.txt", "./temp/pr.txt")
?>