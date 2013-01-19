<?php
/* @var $this BackupWorkController */
/* @var $model BackupWork */

$this->breadcrumbs=array(
	'Backup Works'=>array('index'),
	$model->id,
);

?>

<h1>View BackupWork #<?php echo $model->id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView', array(
        'type'=>'bordered condensed',
	'data'=>$model,
	'attributes'=>array(
		'desc',
		'types.value',
		'min',
		'hour',
		'day',
		'month',
		'week_day',
		array(
                    'name'=>'afected_dbs',
                    'value'=>$model->getDatabaseNameByHash(),
                ),
		'active',
	),
));

$modelSec = new BackupWorkLog('search');


$this->widget('bootstrap.widgets.TbGridView', array(
	'id'=>'backup-work-log-grid',
        'type'=>'striped bordered ',
	'dataProvider'=>$modelSec->search($model->id),
        'template'=>"{items}",
	'columns'=>array(
                array(
                    'name'=>'date_exec',
                    'value'=>'Utils::parseDate($data->date_exec)',
                ),
                array(
                    'name'=>'status_messages',
                    'value'=>'$data->status_messages',
                    'type'=>'raw'
                )
	),
)); 


?>
