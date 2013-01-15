<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<?php $this->beginWidget('bootstrap.widgets.TbHeroUnit',array(
    'heading'=>''.CHtml::encode(Yii::app()->name),
)); ?>

<p>Testing</p>

<?php $this->endWidget(); ?>
<?php 
    print_r(Yii::app()->db->createCommand("show databases;")->queryAll());


?>