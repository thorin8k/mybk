<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form TbActiveForm */
$this->pageTitle=Yii::app()->name . ' - Config';
$this->breadcrumbs=array(
	'Contact',
);
?>

<h1>Configuración</h1>
<br/>
<?php 
/* Please supply your own consumer key and consumer secret */
$oauth = new Dropbox_OAuth_PEAR(Yii::app()->params['consumerKey'], Yii::app()->params['consumerSecret']);
$dropbox = new Dropbox_API($oauth);

$state = 1;
$tokens = array();
$cfg = Config::model()->find('key_cfg = "dropToken"');
$cfgSec = Config::model()->find('key_cfg = "dropTokenSec"');
if(!empty($cfg) && !empty($cfgSec)){
    $tokens['token'] = $cfg->value;
    $tokens['token_secret'] = $cfgSec->value;
    $state = 2;
}

echo '<div>';
echo "<b>Acceso a Dropbox: </b>";
switch($state) {
    case 1 :
        $tokens = $oauth->getRequestToken();
        echo "Pulse en el siguiente enlace para autorizar a la aplicación:\n";
        echo "<a href=".$oauth->getAuthorizeUrl('http://localhost/mybk/index.php?r=site/config&state=2').">Autorizar</a>";
        $cfg = new Config();
        $cfg->key_cfg = "dropToken";
        $cfg->value = $tokens['token'];
        $cfg->save();
        $cfg = new Config();
        $cfg->key_cfg = "dropTokenSec";
        $cfg->value = $tokens['token_secret'];
        $cfg->save();
        break;
    case 2 :                
        $oauth->setToken($tokens);
        try {
            $tokens = $oauth->getAccessToken();
            $cfgQ = Config::model()->find('key_cfg = "dropToken"');
            $cfg = Config::model()->findByPk($cfgSec->id);
            $cfg->key_cfg = "dropToken";
            $cfg->value = $tokens['token'];
            $cfg->save();
            $cfgQ = Config::model()->find('key_cfg = "dropTokenSec"');
            $cfg = Config::model()->findByPk($cfgQ->id);
            $cfg->key_cfg = "dropTokenSec";
            $cfg->value = $tokens['token_secret'];
            $cfg->save();
        } catch (Exception $exc) {
            $state = 3;
        }
        $state = 3;
        
    case 3 :
        echo "El usuario ha sido autenticado\n";
        $oauth->setToken($tokens);
        break;
}
echo '</div>';


?>