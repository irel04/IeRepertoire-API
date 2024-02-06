<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Middleware\AuthenticationMiddleware;

class Library
{
    public static function books(Request $request, Response $response): Response
    {

        $headers = $request->getHeaderLine('Authorization');

        if ($headers === "") {
            $response->getBody()->write(json_encode(["message" => 'Invalid Token']));
            return $response->withStatus(401);
        } elseif (AuthenticationMiddleware::validateToken($headers)) {
            $sql = 'SELECT * FROM books';

            try {

                $db = new DB();
                $conn = $db->connect();

                $conn->beginTransaction();
                $stmt = $conn->prepare($sql);
                $stmt->execute();

                $book_result = $stmt->fetch(PDO::FETCH_ASSOC);

                $response->getBody()->write(json_encode($book_result));
            } catch (PDOException $err) {
                $error = array(
                    "message" => $err->getMessage()
                );

                $response->getBody()->write(json_encode($error));
                return $response->withStatus(500);
            }


            return $response->withStatus(200);
        }
    }
}
