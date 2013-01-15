<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name . ' - BackUp';
$this->breadcrumbs=array(
	'About',
);
?>
<h1>Backup</h1>

<p>Selecciona las tablas de las cuales se realizará un backup</p>

<?php 
    
$gridDataProvider = new CArrayDataProvider(Yii::app()->db->createCommand("show databases;")->queryAll());

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
?>