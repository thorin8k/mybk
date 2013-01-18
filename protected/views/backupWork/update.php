<?php
/* @var $this BackupWorkController */
/* @var $model BackupWork */

$this->breadcrumbs=array(
	'Backup Works'=>array('index'),
	'Update',
);

$this->menu=array(
	array('label'=>'Create new BackupWork', 'url'=>array('create')),
	array('label'=>'Manage BackupWork', 'url'=>array('admin')),
);
?>

<h1>Update BackupWork</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>