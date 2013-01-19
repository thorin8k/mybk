<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form TbActiveForm */
$this->pageTitle=Yii::app()->name . ' - Config';
$this->breadcrumbs=array(
	'Config',
);
?>

<h1>App Configuration</h1>
<br/>

<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
	'id'=>'config-form',
        'htmlOptions'=>array('class'=>'well'),
	'enableAjaxValidation'=>false,
)); ?>
<?php 
/* Please supply your own consumer key and consumer secret */
$oauth = new Dropbox_OAuth_PEAR(Yii::app()->params['consumerKey'], Yii::app()->params['consumerSecret']);
$dropbox = new Dropbox_API($oauth);


echo '<div>';
echo "<b>Dropbox Access: </b>";
switch($state) {
    case 1 :
        $tokens = $oauth->getRequestToken();
        echo "<a href=".$oauth->getAuthorizeUrl('http://'.Yii::app()->request->getServerName().Yii::app()->request->requestUri).">Autorizar</a>";
        Config::addOrSetConfig(Config::DBPStatus,2);
        Utils::setConfigTokens($tokens['token'],$tokens['token_secret']);
        break;
    case 2 :                
        $oauth->setToken($tokens);
        try {
            $response = $dropbox->getAccountInfo();
            Config::addOrSetConfig(Config::DBPStatus,3);
            $state = 3;
        } catch (Exception $exc) {
            if(!empty($tokens)){
                try {
                    $tokens = $oauth->getAccessToken();
                    Utils::setConfigTokens($tokens['token'],$tokens['token_secret']);
                    Config::addOrSetConfig(Config::DBPStatus,3);
                    $state = 3;
                } catch (Exception $exc) {
                    Config::addOrSetConfig(Config::DBPStatus,1);
                    $this->redirect(array('config'));
                    break;
                }
            }
        }        
    case 3 :
        $oauth->setToken($tokens);
        $data = $dropbox->getAccountInfo();
        echo " Logged as ".$data['display_name']."   ";
        echo CHtml::link("Revoke Access",array('site/config','revoke'=>true));
        break;
}
echo '</div>';
?>
<br/>


<div class="span-8">
    <?php echo Chtml::label('Backups Path:','value[0]',array('style'=>'font-weight:bold;')); ?>

    <?php echo Chtml::textField('key_cfg[0]',Config::BKPath,array('style'=>'display:none;')); ?>
    <?php echo Chtml::textField('value[0]',Config::getConfig(Config::BKPath)); ?>
</div>
<div class="span-8">
    <?php echo Chtml::label('Dropbox Path:','value[1]',array('style'=>'font-weight:bold;')); ?>

    <?php echo Chtml::textField('key_cfg[1]',Config::DBPPath,array('style'=>'display:none;')); ?>
    <?php echo Chtml::textField('value[1]',Config::getConfig(Config::DBPPath)); ?>
</div>
<div clasS="clear"></div>
<div class="span-8">
    <?php echo Chtml::label('Database Host:','value[2]',array('style'=>'font-weight:bold;')); ?>

    <?php echo Chtml::textField('key_cfg[2]',Config::DBHost,array('style'=>'display:none;')); ?>
    <?php echo Chtml::textField('value[2]',Config::getConfig(Config::DBHost)); ?>
</div >
<div class="span-8">
    <?php echo Chtml::label('Database Username:','value[3]',array('style'=>'font-weight:bold;')); ?>

    <?php echo Chtml::textField('key_cfg[3]',Config::DBUser,array('style'=>'display:none;')); ?>
    <?php echo Chtml::textField('value[3]',Config::getConfig(Config::DBUser)); ?>
</div>
<div class="span-8">
    <?php echo Chtml::label('Database Password:','value[4]',array('style'=>'font-weight:bold;')); ?>

    <?php echo Chtml::textField('key_cfg[4]',Config::DBPwd,array('style'=>'display:none;')); ?>
    <?php echo Chtml::passwordField('value[4]',Config::getConfig(Config::DBPwd)); ?>
</div>
<div class="clear"></div>
<div>
    <?php echo Chtml::label('Admin Mail:','value[5]',array('style'=>'font-weight:bold;')); ?>

    <?php echo Chtml::textField('key_cfg[5]',Config::AdmMail,array('style'=>'display:none;')); ?>
    <?php echo Chtml::textField('value[5]',Config::getConfig(Config::AdmMail)); ?>
</div>
<br/>
<?php $this->widget('bootstrap.widgets.TbButton', array('buttonType'=>'submit','type'=>'primary', 'label'=>'Save')); ?>

<?php $this->endWidget(); ?>


<div>
    <b>Active cron jobs: </b><br/>
    <?php
    
        $output = exec('crontab -l');
        echo $output;
    
    ?>
    
</div>