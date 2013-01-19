<?php
/* @var $this BackupWorkController */
/* @var $model BackupWork */

$this->breadcrumbs=array(
	'Backup Works'
);

?>

<h2>Backup Works</h2>

<p>Scheduled works.
</p>


<?php 
$this->widget('bootstrap.widgets.TbButton', array(
    'label'=>'Create Backup Work',
    'type'=>'primary', // null, 'primary', 'info', 'success', 'warning', 'danger' or 'inverse'
    'buttonType'=>'link',
    'size'=>'normal', // null, 'large', 'small' or 'mini'
    'url'=>array('create'),
    'htmlOptions'=>array('id'=>'dobk',),
));

$this->widget('bootstrap.widgets.TbGridView', array(
	'id'=>'backup-work-grid',
        'type'=>'striped bordered ',
	'dataProvider'=>$model->search(),
        'template'=>"{items}",
	//'filter'=>$model,
	'columns'=>array(
		//'id',
		'desc',
		array(
                    'name'=>'afected_dbs',
                    'value'=>'$data->getDatabaseNameByHash()'
                ),
		array(
                    'name'=>'type',
                    'value'=>'$data->types->value'
                ),
                
		array(
                    'name'=>'active',
                    'value'=>'$data->active == 1? "Yes" : "No";'
                ),
		array(
                    'name'=>'sendToDropbox',
                    'value'=>'$data->sendToDropbox == 1? "Yes" : "No";'
                ),
		array(
			'class'=>'CButtonColumn',
		),
	),
)); 
?>
