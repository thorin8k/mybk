<?php
/* @var $this BackupWorkController */
/* @var $model BackupWork */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
	'id'=>'backup-work-form',
        'htmlOptions'=>array('class'=>'well'),
	'enableAjaxValidation'=>false,
)); ?>



        <?php echo $form->labelEx($model,'desc'); ?>
        <?php echo $form->textField($model,'desc',array('size'=>60,'maxlength'=>80)); ?>
        <?php echo $form->error($model,'desc'); ?>

        <?php echo $form->labelEx($model,'date_created'); ?>
        <?php //echo $form->textField($model,'date_created',array('size'=>10,'maxlength'=>10)); ?>
        <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
                                'name'=>'BackupWork[date_created]',
                                'attribute'=>'date_created',
                                'language'=>'es',
                                'model'=>$model,
            ));?>
        <?php echo $form->error($model,'date_created'); ?>

        <?php echo $form->labelEx($model,'afected_dbs'); ?>
        <?php echo $form->textField($model,'afected_dbs',array('size'=>60,'maxlength'=>200)); ?>
        <?php echo $form->error($model,'afected_dbs'); ?>

        <?php echo $form->labelEx($model,'active'); ?>
        <?php echo $form->textField($model,'active'); ?>
        <?php echo $form->error($model,'active'); ?>
        <br/>
        <br/>
        <?php $this->widget('bootstrap.widgets.TbButton', array('buttonType'=>'submit','type'=>'primary', 'label'=>$model->isNewRecord ? 'Create' : 'Save')); ?>

<?php $this->endWidget(); ?>

</div><!-- form -->