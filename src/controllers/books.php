<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Middleware\AuthenticationMiddleware;

class Library
{
    public static function books(Request $request, Response $response): Response
    {

        $headers = $request->getHeaderLine('Authorization');

        // if ($headers === "") {
        //     $response->getBody()->write(json_encode(["message" => 'Invalid Token']));
        //     return $response->withStatus(401);
        // } elseif (AuthenticationMiddleware::validateToken($headers)) {

        // } else {
        //     $response->getBody()->write(json_encode(["message" => 'Invalid Token']));
        //     return $response->withStatus(200);
        // }

        $sql = 'SELECT * FROM books';

        try {
            $db = new DB();
            $conn = $db->connect();

            $conn->beginTransaction();
            $stmt = $conn->prepare($sql);
            $stmt->execute();

            $dn = null;
            $book_results = array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $book_results[] = $row;
            }


            $response->getBody()->write(json_encode($book_results));

            return $response->withStatus(200);
        } catch (PDOException $err) {
            $error = array(
                "message" => $err->getMessage()
            );

            $response->getBody()->write(json_encode($error));
            return $response->withStatus(500);
        }
    }

    public static function books_preview(Request $request, Response $response): Response
    {
        $sql = 'SELECT * FROM books LIMIT 8';


        $authorization = $request->getHeaderLine('Authorization');

        try {

            if (AuthenticationMiddleware::validateToken($authorization)) {
                $db = new DB();
                $conn = $db->connect();

                $conn->beginTransaction();
                $stmt = $conn->prepare($sql);
                $stmt->execute();

                $book_results = array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    $book_results[] = $row;
                }

                $response->getBody()->write(json_encode($book_results));
                return $response->withStatus(200);
            } else {
                $error = array(
                    "message" => 'Unauthorized Connection'
                );
                $response->getBody()->write(json_encode($error));
                return $response->withStatus(401);
            }
        } catch (PDOException $err) {
            $error = array(
                "message" => $err->getMessage()
            );

            $response->getBody()->write(json_encode($error));
            return $response->withStatus(500);
        }
    }

    public static function popular_categories(Request $request, Response $response): Response
    {
        $sql = 'SELECT * FROM books WHERE category IN ("Operating System", "Programming", "Electronic Circuit Design", "Data Communication and Networks") ORDER BY RAND() LIMIT 20';

        $authorization = $request->getHeaderLine('Authorization');

        try {


            if (AuthenticationMiddleware::validateToken($authorization)) {
                $db = new DB();
                $conn = $db->connect();

                $conn->beginTransaction();
                $stmt = $conn->prepare($sql);
                $stmt->execute();

                $book_results = array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    $book_results[] = $row;
                }
                $response->getBody()->write(json_encode($book_results));
                return $response->withStatus(200);
            } else {
                $invalid = array('message' => 'invalid');
                $response->getBody()->write(json_encode($invalid));
                return $response->withStatus(401);
            }
        } catch (PDOException $err) {
            $error = array(
                "message" => $err->getMessage()
            );

            $response->getBody()->write(json_encode($error));
            return $response->withStatus(500);
        }
    }

    public static function discover(Request $request, Response $response): Response
    {
        $sql = 'SELECT * FROM books WHERE category IN ("Operating System", "Programming", "Electronic Circuit Design", "Data Communication and Networks") ORDER BY RAND() LIMIT 20';

        $authorization = $request->getHeaderLine('Authorization');


        try {

            if (AuthenticationMiddleware::validateToken($authorization)) {
                $db = new DB();
                $conn = $db->connect();

                $conn->beginTransaction();
                $stmt = $conn->prepare($sql);
                $stmt->execute();

                $book_results = array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    $book_results[] = $row;
                }

                $response->getBody()->write(json_encode($book_results));
                return $response->withStatus(200);
            } else {
                $invalid = array('message' => 'invalid');
                $response->getBody()->write(json_encode($invalid));
                return $response->withStatus(401);
            }
            
        } catch (PDOException $err) {
            $error = array(
                "message" => $err->getMessage()
            );

            $response->getBody()->write(json_encode($error));
            return $response->withStatus(500);
        }
    }
}
