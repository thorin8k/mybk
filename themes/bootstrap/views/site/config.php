<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form TbActiveForm */
$this->pageTitle=Yii::app()->name . ' - Config';
$this->breadcrumbs=array(
	'Contact',
);
?>

<h1>App Configuration</h1>
<br/>
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
        Config::addOrSetConfig("dropState",2);
        $this->setConfigTokens($tokens['token'],$tokens['token_secret']);
        break;
    case 2 :                
        $oauth->setToken($tokens);
        try {
            $response = $dropbox->getAccountInfo();
            Config::addOrSetConfig("dropState",3);
            $state = 3;
        } catch (Exception $exc) {
            if(!empty($tokens)){
                try {
                    $tokens = $oauth->getAccessToken();
                    $this->setConfigTokens($tokens['token'],$tokens['token_secret']);
                    Config::addOrSetConfig("dropState",3);
                    $state = 3;
                } catch (Exception $exc) {
                    Config::addOrSetConfig("dropState",1);
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