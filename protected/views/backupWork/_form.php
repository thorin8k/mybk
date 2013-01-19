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
    <div class="span-7">
        <?php echo $form->labelEx($model,'desc'); ?>
        <?php echo $form->textField($model,'desc',array('size'=>60,'maxlength'=>80)); ?>
        <?php echo $form->error($model,'desc'); ?>
    </div>
    <div class="span-7">
        <?php echo $form->labelEx($model,'active'); ?>
        <?php echo $form->checkBox($model,'active'); ?>
        <?php echo $form->error($model,'active'); ?>
    </div>
    <div class="span-7">
        <?php echo $form->labelEx($model,'sendToDropbox'); ?>
        <?php echo $form->checkBox($model,'sendToDropbox'); ?>
        <?php echo $form->error($model,'sendToDropbox'); ?>
    </div>
    <div class="clear"></div>

    <div>
        <?php echo $form->labelEx($model,'afected_dbs'); ?>
        <?php echo $form->textField($model,'afected_dbs',array('size'=>60,'maxlength'=>200,'style'=>'display:none;')); ?>
        <?php //echo $form->error($model,'afected_dbs'); ?>
        <?php $this->widget('bootstrap.widgets.TbGridView', array(
                'id'=>'db-grid',
                'type'=>'striped bordered condensed',
                'selectionChanged'=>'selChange',
                'dataProvider'=>$gridDataProvider,
                'template'=>"{items}",
                'selectableRows'=>"2",
                'htmlOptions'=>array('style'=>'width: 500px; '),
                'columns'=>array(
                    array('name'=>'Database', 'header'=>'Name'),
                ),
            )); ?>
    </div>
    <div class="span-7">
        <?php echo $form->label($model,'type'); ?>
        <?php echo $form->dropDownList($model,'type',  CHtml::listData(ExecTypes::model()->findAll(), 'id', 'value')); ?>
    </div>
    <div class="span-7">
        <?php echo $form->labelEx($model,'hour'); ?>
        <?php 
        $this->widget(
            'application.extensions.timepicker.EJuiDateTimePicker',
            array(
                'model'     => $model,
                'attribute' => 'hour',
                'language'=> 'en',
                'mode'    => 'time',
            )
        );
        ?>
        <?php echo $form->error($model,'hour'); ?>
    </div>
    <div class="clear"></div>
    <div class="span-7 hide" id="day">
        <?php echo $form->labelEx($model,'day'); ?>
        <?php 
        echo $form->dropDownList($model,'day',
                    array(
                        '*'=>'','1'=>'1','2'=>'2','3'=>'3','4'=>'4','5'=>'5','6'=>'6',
                        '7'=>'7','8'=>'8','9'=>'9','10'=>'10','11'=>'11','12'=>'12','13'=>'13',
                        '14'=>'14','15'=>'15','16'=>'16','17'=>'17','18'=>'18','19'=>'19','20'=>'20','21'=>'21',
                        '22'=>'22','23'=>'23','24'=>'24','25'=>'25','26'=>'26','27'=>'27','28'=>'28','29'=>'29',
                        '30'=>'30','31'=>'31'
                    )
                ); 
        ?>
        <?php echo $form->error($model,'day'); ?>
    </div>
    <div class="span-7 hide" id="month">
        <?php echo $form->labelEx($model,'month'); ?>
        <?php 
        echo $form->dropDownList($model,'month',
                array(
                        '*'=>'','1'=>'January','2'=>'February','3'=>'March','4'=>'April','5'=>'May','6'=>'June',
                        '7'=>'July','8'=>'August','9'=>'September','10'=>'October','11'=>'November','12'=>'December'
                    )
                ); 
        ?>
        <?php echo $form->error($model,'month'); ?>    
    </div>
    
    <div  class="span-7 hide" id="week">
        <?php echo $form->labelEx($model,'week_day'); ?>
        <?php 
        echo $form->dropDownList($model,'week_day',
                array(
                        '*'=>'','0'=>'Sunday','1'=>'Monday','2'=>'Tuesday','3'=>'Wednesday','4'=>'Thursday','5'=>'Friday','6'=>'Saturday',
                        
                    )
                ); 
        ?>
        <?php echo $form->error($model,'week_day'); ?>    
    </div>
    <div class="clear"></div>
        <br/>
        <?php $this->widget('bootstrap.widgets.TbButton', array('buttonType'=>'submit','type'=>'primary', 'label'=>$model->isNewRecord ? 'Create' : 'Save')); ?>

<?php $this->endWidget(); ?>

</div><!-- form -->

<script type="text/javascript">
    $(document).ready(function(){
        $('#BackupWork_type').change(function(){
            var value = $(this).val();
            refreshInterface(value)
        });
        refreshInterface($('#BackupWork_type').val());
        $('#db-grid tr').removeClass('selected');
        var selection = $('#BackupWork_afected_dbs').val();
        if(selection !== ""){
            var sel = selection.split(",");
            for(var i=0,len=sel.length; i<len; i++){
                setGridSelection('db-grid',sel[i]);
            }
            
        }
    });
    function selChange(target_id){
        var selection = $.fn.yiiGridView.getSelection('db-grid');
        $('#BackupWork_afected_dbs').val(selection);
    }
    function setGridSelection(table,idEl){
        //$('#'+table+' tr').removeClass('selected');
        var elementNum = "";
        $('#'+table+' > div.keys > span').each(function(i){
            if($(this).text() == idEl){
                elementNum = i;
            }
        });

        $('#'+table+' tbody > tr').each(function(i){
            if(i == elementNum){
                $(this).addClass('selected');
            }
        });

    }
    function refreshInterface(value){
        switch(value){
            case "1":
                //Diariamente se ejecuta a la hora indicada
                $('#week').hide();
                $('#day').hide();
                $('#month').hide();
                break;
            case "2":
                //Semanalmente hay que marcar la hora y el día de la semana
                $('#week').show();
                $('#day').hide();
                $('#month').hide();
                break;
            case "3":
                //Mensualmente hay que marcar la hora y el día del mes 
                $('#week').hide();
                $('#day').show();
                $('#month').hide();
                break;                    
            case "4":
                //Anualmente hay que marcar la hora, el mes y el día del mes
                $('#week').hide();
                $('#day').show();
                $('#month').show();
                break;                    
        }
    }
</script>