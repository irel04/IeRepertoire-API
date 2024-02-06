<?php

use Slim\Factory\AppFactory;
use Slim\Interfaces\RouteCollectorProxyInterface as Group;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Middleware\CorsMiddleware;


require __DIR__ . '../../controllers/user.php';
require __DIR__ . '../../controllers/books.php';


$app = AppFactory::create();

// Invoking cors to add necessary headers to response
$handleCORS = new CorsMiddleware();
$app->add($handleCORS);


// This the route for user related endpoints
$app->group('/api/user', function(Group $group){
    
    $group->post('/register', [User::class, 'register']);

    $group->post('/login', [User:: class, 'login']);

    // Allow preflight requests
    $group->options('', function (Request $request, Response $response): Response {
        return $response;
    });
});

$app->group('/api/library', function(Group $group){
    
    $group->get('/books', [Library::class, 'books']);
    
    // Allow preflight requests
    $group->options('', function (Request $request, Response $response): Response {
        return $response;
    });
});

