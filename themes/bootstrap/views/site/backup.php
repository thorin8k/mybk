<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name . ' - BackUp';
$this->breadcrumbs=array(
	'About',
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

$this->widget('bootstrap.widgets.TbGridView', array(
    'id'=>'db-grid',
    'type'=>'striped bordered condensed',
    'dataProvider'=>$gridDataProvider,
    'template'=>"{items}",
    'selectableRows'=>"2",
    'columns'=>array(
        array('name'=>'Database', 'header'=>'Database'),
        //array(
            //'class'=>'bootstrap.widgets.TbButtonColumn',
          //  'htmlOptions'=>array('style'=>'width: 50px'),
        //),
    ),
));
    $failure = "alert(data.div);";
    $success = "alert(data.status);";
Utils::CreateAjaxReturnFunction("doBackUp(id)","/site/backup",$failure,$success,"'dobk='+true+'&bkids='+id",'get');
?>
<div class="clear"></div>
<script type="text/javascript">
    $(document).ready(function(){
        
        $('#dobk').click(function(){
            doBackUp($.fn.yiiGridView.getSelection('db-grid'));
        });
    });
</script>