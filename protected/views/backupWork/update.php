<?php
/* @var $this BackupWorkController */
/* @var $model BackupWork */

$this->breadcrumbs=array(
	'Backup Works'=>array('index'),
	'Update',
);
?>

<h1>Update BackupWork</h1>

<?php echo $this->renderPartial('_form', array('gridDataProvider'=>$gridDataProvider,'model'=>$model)); ?>