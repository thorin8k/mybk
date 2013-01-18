<?php
/* @var $this BackupWorkController */
/* @var $model BackupWork */

$this->breadcrumbs=array(
	'Backup Works'
);

$this->menu=array(
	//array('label'=>'List BackupWork', 'url'=>array('index')),
        array('label'=>'Operations'),
        array('label'=>'Create new work', 'icon'=>'pencil', 'url'=>array('create')),
);

?>

<h2>Backup Works</h2>

<p>Scheduled works.
</p>


<?php $this->widget('bootstrap.widgets.TbGridView', array(
	'id'=>'backup-work-grid',
        'type'=>'striped bordered ',
	'dataProvider'=>$model->search(),
        'template'=>"{items}",
	//'filter'=>$model,
	'columns'=>array(
		//'id',
		'desc',
		'date_created',
		'afected_dbs',
		'active',
		array(
			'class'=>'CButtonColumn',
                        'template' => '{update}{delete}',
		),
	),
)); ?>
