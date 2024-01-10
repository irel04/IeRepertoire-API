<?php
// Handler.php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class User
{
    public static function handleRequest(Request $request, Response $response): Response
    {

        $sql = "INSERT INTO user (last_name, first_name, email, pass) VALUES (:lastName, :firstName, :email, :pass)";

        $data = $request->getParsedBody();

        if ($data != null) {
            $lastName = $data["lastName"];
            $firstName = $data["firstName"];
            $email = $data["email"];
            $pass = password_hash($data["pass"], PASSWORD_DEFAULT);
        }

        try {

            $db = new DB();
            $conn = $db->connect();

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(":lastName", $lastName);
            $stmt->bindParam(":firstName", $firstName);
            $stmt->bindParam(":email", $email);
            $stmt->bindParam(":pass", $pass);


            $stmt->execute();

            $db = null;

            return $response->withHeader("Content-Type", 'application/json')->withStatus(200);
        } catch (PDOException $err) {
            $error = array(
                "message" => $err->getMessage()
            );

            $response->getBody()->write(json_encode($error));
            return $response->withHeader("Content-Type", 'application/json')->withStatus(500);
        }


        
    }
}
