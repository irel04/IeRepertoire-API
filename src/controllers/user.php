<?php
// Handler.php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class User
{
    public static function handleRequest(Request $request, Response $response): Response
    {
        $body = $request->getBody()->getContents();
        $response->getBody()->write($body);
        
        return $response->withHeader("Content-Type", 'application/json')->withStatus(400);
    }
}
