<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name . ' - BackUp';
$this->breadcrumbs=array(
	'Backup',
);
?>

<h2>Instant Backup</h2>
<p >Select the databases to backup.</p>

<?php 
echo '<p class="error">'.$errors.'</p>';
$this->widget('bootstrap.widgets.TbButton', array(
    'label'=>'Do Backup',
    'type'=>'primary', // null, 'primary', 'info', 'success', 'warning', 'danger' or 'inverse'
    'size'=>'normal', // null, 'large', 'small' or 'mini'
    
    'htmlOptions'=>array('id'=>'dobk',),
));

echo '&nbsp;&nbsp;&nbsp;Send to dropbox: ';
echo CHtml::checkBox('sendToDBP',false);
$this->widget('bootstrap.widgets.TbGridView', array(
    'id'=>'db-grid',
    'type'=>'striped bordered condensed',
    'dataProvider'=>$gridDataProvider,
    'template'=>"{items}",
    'selectableRows'=>"2",
    'htmlOptions'=>array('style'=>'width: 500px; '),
    'columns'=>array(
        array('name'=>'Database', 'header'=>'Database'),
    ),
));
    $failure = "alert(data.div);";
    $success = "alert(data.div);";
Utils::CreateAjaxReturnFunction("doBackUp(id,dropbox)","/site/backup",$failure,$success,"'dobk='+true+'&bkids='+id+'&dropbox='+dropbox",'get');
?>
<div class="clear"></div>
<script type="text/javascript">
    $(document).ready(function(){
        
        $('#dobk').click(function(){
            doBackUp($.fn.yiiGridView.getSelection('db-grid'),$('#sendToDBP').is(':checked'));
        });
    });
</script>