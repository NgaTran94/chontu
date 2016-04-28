<?php

    require __DIR__ . DS . '../vendor/autoload.php';
    use PayPal\Rest\ApiContext;
    use PayPal\Auth\OAuthTokenCredential;

    error_reporting(E_ALL);
    ini_set('display_errors', '1');

    // Config parameters
    $clientId = 'Aeq_PHqHyCAYboRp8SnxOm4zzQ0xjHHpk-R3wahGlxYB5G-i2BoHP0uNS2CM7vNqy2JbQH6u5ubWTMDQ';
    $clientSecret = 'EDW4KairU3PFvNkUz3l85EkwWG3iJm_as78TlMuZDd0f2ow7k5HFKbaj9l46RByJ0XsthfmHu4mpGwP-';
    $config = array(
        'mode' => 'live',    // Mode can be sandbox or live
        'log.LogEnabled' => true,
        'log.FileName' => '../PayPal.log',
        'log.LogLevel' => 'FINE', // Log level should be DEBUG for sandbox and FINE for live transaction
        'validation.level' => 'log',
        'cache.enabled' => true,
        // 'http.CURLOPT_CONNECTTIMEOUT' => 30
        // 'http.headers.PayPal-Partner-Attribution-Id' => '123123123'
    );

    // Init the context
    $apiContext = new ApiContext(new OAuthTokenCredential($clientId, $clientSecret));
    $apiContext->setConfig($config);
    
?>