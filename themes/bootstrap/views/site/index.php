<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>
<div style="margin-top:60px;"></div>
<?php $this->beginWidget('bootstrap.widgets.TbHeroUnit',array(
    'heading'=>''.CHtml::encode(Yii::app()->name),
)); ?>

<p>Testing</p>

<?php $this->endWidget(); ?>
