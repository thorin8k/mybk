<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form TbActiveForm */

$this->pageTitle=Yii::app()->name . ' - Config';
$this->breadcrumbs=array(
	'Contact',
);
?>

<h1>Config</h1>


<p>
Working: Desde aquí se podrá configurar la realización periódica de un backup
</p>
<?php 

/* Please supply your own consumer key and consumer secret */
$consumerKey = 'u0gsz62pewn902m';
$consumerSecret = 'atkd6kutk4lqtpr';


$autoload = function ($className) {

    if(strpos($className,'Dropbox_')===0) {

        include Yii::getPathOfAlias('application.components') . '/Dropbox/' . str_replace('_','/',substr($className,8)) . '.php';

    }

};
//
//spl_autoload_unregister(array('YiiBase','autoload'));        
YiiBase::registerAutoloader($autoload, false);
//spl_autoload_register(array('YiiBase','autoload'));

$oauth = new Dropbox_OAuth_PHP($consumerKey, $consumerSecret);

// If the PHP OAuth extension is not available, you can try
// PEAR's HTTP_OAUTH instead.
// $oauth = new Dropbox_OAuth_PEAR($consumerKey, $consumerSecret);

$dropbox = new Dropbox_API($oauth);

if (isset($_SESSION['state'])) {
    $state = $_SESSION['state'];
} else {
    $state = 1;
}

switch($state) {

    /* In this phase we grab the initial request tokens
       and redirect the user to the 'authorize' page hosted
       on dropbox */
    case 1 :
        echo "Step 1: Acquire request tokens\n";
        $tokens = $oauth->getRequestToken();
        print_r($tokens);

        // Note that if you want the user to automatically redirect back, you can
        // add the 'callback' argument to getAuthorizeUrl.
        echo "Step 2: You must now redirect the user to:\n";
        echo $oauth->getAuthorizeUrl() . "\n";
        $_SESSION['state'] = 2;
        $_SESSION['oauth_tokens'] = $tokens;
        die();

    /* In this phase, the user just came back from authorizing
       and we're going to fetch the real access tokens */
    case 2 :
        echo "Step 3: Acquiring access tokens\n";
        $oauth->setToken($_SESSION['oauth_tokens']);
        $tokens = $oauth->getAccessToken();
        print_r($tokens);
        $_SESSION['state'] = 3;
        $_SESSION['oauth_tokens'] = $tokens;
        // There is no break here, intentional

    /* This part gets called if the authentication process
       already succeeded. We can use our stored tokens and the api 
       should work. Store these tokens somewhere, like a database */
    case 3 :
        echo "The user is authenticated\n";
        echo "You should really save the oauth tokens somewhere, so the first steps will no longer be needed\n";
        print_r($_SESSION['oauth_tokens']);
        $oauth->setToken($_SESSION['oauth_tokens']);
        break;
}


?>