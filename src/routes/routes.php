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
$app->group('/api/user', function (Group $group) {

    $group->post('/register', [User::class, 'register']);
    $group->post('/login', [User::class, 'login']);
    $group->post('/profile', [User::class, 'showProfile']);
    $group->post('/library', [User::class, 'addToLibrary']);
    $group->post('/library/myList', [User::class, 'loadLibrary']);


    
    // Allow preflight requests
    $group->options('/{routes:.*}', function (Request $request, Response $response): Response {
        return $response;
    });
});

$app->group('/api/library', function (Group $group) {

    $group->get('/books', [Library::class, 'books']);
    $group->get('/books/preview', [Library::class, 'books_preview']);
    $group->get('/books/popular', [Library::class, 'popular_categories']);


    // Allow preflight requests
    $group->options('/{routes:.*}', function (Request $request, Response $response): Response {
        return $response;
    });
});
