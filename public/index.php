<?php
use MyApp\Handlers\HttpErrorHandler;
use MyApp\Handlers\ShutdownHandler;
use Slim\Factory\AppFactory;
use Slim\Factory\ServerRequestCreatorFactory;



require __DIR__ . '/../vendor/autoload.php';
require __DIR__ . '/../src/connection/db.php';


// Instantiate app
$app = AppFactory::create();

// Set that to your needs
$displayErrorDetails = true;


$callableResolver = $app->getCallableResolver();
$responseFactory = $app->getResponseFactory();

$serverRequestCreator = ServerRequestCreatorFactory::create();
$request = $serverRequestCreator->createServerRequestFromGlobals();

$errorHandler = new HttpErrorHandler($callableResolver, $responseFactory);
$shutdownHandler = new ShutdownHandler($request, $errorHandler, $displayErrorDetails);
register_shutdown_function($shutdownHandler);


// Add route callbacks
require "../src/routes/routes.php";



// Add Routing Middleware
$app->addRoutingMiddleware();



// Add Error Handling Middleware
$errorMiddleware = $app->addErrorMiddleware($displayErrorDetails, false, false);
$errorMiddleware->setDefaultErrorHandler($errorHandler);


$app->run();