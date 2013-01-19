<?php
/* @var $this BackupWorkController */
/* @var $model BackupWork */

$this->breadcrumbs=array(
	'Backup Works'=>array('index'),
	'Create',
);

?>

<h1>Create BackupWork</h1>

<?php echo $this->renderPartial('_form', array('gridDataProvider'=>$gridDataProvider,'model'=>$model)); ?>