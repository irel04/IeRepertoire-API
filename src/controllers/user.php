<?php
// Handler.php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class User
{
    public static function register(Request $request, Response $response): Response
    {

        $headers = $request->getHeaderLine('Content-type');

        if (strpos($headers, 'application/json') === false) {
            $message = array(
                'message' => 'Invalid content-type',
                'status' => 404
            );

            $payload = json_encode($message);

            $response->getBody()->write($payload);

            return $response->withStatus(404);
        }


        $sql = "INSERT INTO user (user_id, last_name, first_name, birthday, address, contact_number, email) VALUES (:id, :lastName, :firstName, :birthday, :address, :contact, :email)";

        $data = $request->getParsedBody();

        if ($data != null) {
            $user_id = $data['id'];
            $lastName = $data["lastName"];
            $firstName = $data["firstName"];
            $email = $data["email"];
            $birthday = $data["birthday"];
            $address = $data["address"];
            $contact_number = $data["contactNumber"];

            $birthday = $data["birthday"];
            $dateObject = DateTime::createFromFormat('d-m-Y', $birthday);

        }

        try {

            $db = new DB();
            $conn = $db->connect();

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(":id", $user_id);
            $stmt->bindParam(":lastName", $lastName);
            $stmt->bindParam(":firstName", $firstName);
            $stmt->bindParam(":email", $email);
            $stmt->bindParam(":address", $address);
            $stmt->bindParam(":birthday", $dateObject->format('Y-m-d'));
            $stmt->bindParam(":contact", $contact_number);




            $stmt->execute();

            $db = null;
            return $response->withHeader("Content-Type", 'application/json')->withStatus(200);
        } catch (PDOException $err) {
            $error = array(
                "message" => $err->getMessage()
            );

            $response->getBody()->write(json_encode($error));
            return $response->withStatus(500);
        }
    }

    public static function login(Request $request, Response $response): Response
    {
        $headers = $request->getHeaderLine('Content-type');

        if (strpos($headers, 'application/json') === false) {
            $message = array(
                'message' => 'Invalid content-type',
                'status' => 404
            );

            $payload = json_encode($message);

            $response->getBody()->write($payload);

            return $response->withStatus(404);
        }

        $sql = "SELECT * FROM user WHERE first_name = :fname AND last_name = :lname";

        $data = $request->getParsedBody();

        if ($data != null) {
            $lastName = $data["lastName"];
            $firstName = $data["firstName"];
            $pass = $data['pass'];
        }

        try {
            
            $db = new DB();
            $conn = $db->connect();

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(":fname", $firstName);
            $stmt->bindParam(":lname", $lastName);

            $stmt->execute();

            $data = $stmt->fetchAll(PDO::FETCH_ASSOC);



            $data = json_encode($data);

            $response->getBody()->write($data);

            return $response->withHeader("Content-Type", 'application/json')->withStatus(200);


        } catch (PDOException $err) {
            $error = array(
                "message" => $err->getMessage()
            );

            $response->getBody()->write(json_encode($error));
            return $response->withStatus(500);
        }
    }
}
