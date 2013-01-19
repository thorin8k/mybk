<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>
<div style="margin-top:60px;"></div>
<?php $this->beginWidget('bootstrap.widgets.TbHeroUnit',array(
    'heading'=>''.CHtml::encode(Yii::app()->name),
)); ?>

<p>First release of a mysql backup system. </p>

<?php $this->endWidget(); ?>
