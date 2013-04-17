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
                    'class' => 'CButtonColumn',
                    'header' => '',
                    'template' => '{exec}{view}{update}{delete}',
                    'buttons'=>array(
                        'exec'=>array(
                            'label'=>'Ejecutar',
                            'url'=>'$data->id',
                            'imageUrl'=>'css/server_go.png',
                            'click'=>'function(){ executeBKTask($(this).attr("href")); return false;}'
                        ),
                        
                    )
                )
	),
)); 


echo '<script type="text/javascript">';

        echo 'function executeBKTask(id){';
        echo 'var params = "bk_id="+id;';
        echo CHtml::ajax(array(
                'url'=>array("backupWork/execute"),
                'data'=>"js:params",
                'type'=>"post",
                'dataType'=>'json',
                'success'=>"function(data){
                    if(typeof(data) == 'object'){
                        if(data.status == 'failure'){
                            alert('Fail');
                        }else if(data.status == 'success'){
                            alert('OK');
                        }else if(data.status == 'error'){
                            alert('Fail');
                        }
                    }else{
                        alert('La solicitud efectuada no ha devuelto ninguna información.');
                    }
               }"
            ));

          echo '      return false; }
        </script>';
?>
