<?php

use Slim\Factory\AppFactory;
use Slim\Interfaces\RouteCollectorProxyInterface as Group;
use App\Src\Controller\User;

require __DIR__ . '../../controllers/user.php';

$app = AppFactory::create();

// This the route for user related endpoints
$app->group('/api/user', function(Group $group){
    $group->post('/register', [User::class, 'handleRequest']);
});

