<?php
/* @var $this BackupWorkController */
/* @var $model BackupWork */

$this->breadcrumbs=array(
	'Backup Works'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Manage BackupWork', 'url'=>array('admin')),
);
?>

<h1>Create BackupWork</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>