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
        $insert_credentials = "INSERT INTO login_credentials(user_id, user_name, password, role) VALUES (:user_id, :user_name, :password, :role)";

        $data = $request->getParsedBody();

        if ($data != null) {
            $user_id = $data['user_id'];
            $lastName = $data["last_name"];
            $firstName = $data["first_name"];
            $email = $data["email"];
            $birthday = $data["birthday"];
            $address = $data["address"];
            $contact_number = $data["contact_number"];
            $dateObject = DateTime::createFromFormat('Y-m-d', $birthday);
            $bdayFormat = $dateObject->format('Y-m-d');

            //credentials for logging in account
            $user_name = $data["user_name"];
            $password = $data["password"];
            $hash_password = hash("sha256", $password);
            $role = $data['role'];
        }

        try {

            $db = new DB();
            $conn = $db->connect();

            $conn->beginTransaction();

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(":id", $user_id);
            $stmt->bindParam(":lastName", $lastName);
            $stmt->bindParam(":firstName", $firstName);
            $stmt->bindParam(":email", $email);
            $stmt->bindParam(":address", $address);
            $stmt->bindParam(":birthday", $bdayFormat);
            $stmt->bindParam(":contact", $contact_number);


            $stmt->execute();

            // insert username and password
            $user_id = $conn->lastInsertId();
            $stmt = $conn->prepare($insert_credentials);

            $stmt->bindParam(":user_id", $user_id);
            $stmt->bindParam(":user_name", $user_name);
            $stmt->bindParam(":password", $hash_password);
            $stmt->bindParam(":role", $role);

            $stmt->execute();

            $conn->commit();
            $db = null;

            $response->getBody()->write(json_encode(["success" => true]));

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

        $sql = "SELECT password FROM login_credentials WHERE user_name = :user_name";

        $data = $request->getParsedBody();

        if ($data != null) {
            $user_name = $data["user_name"];
            $password = $data["password"];
        }

        try {

            $db = new DB();
            $conn = $db->connect();
            $conn->beginTransaction();

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(":user_name", $user_name);

            $stmt->execute();

            $result = $stmt->fetch(PDO::FETCH_ASSOC);

            $conn->commit();

            $result_password = $result['password'];

            $verified = hash_equals(hash("sha256", $password), $result_password);



            if ($verified ===  true) {
                $response->getBody()->write(json_encode(["message" => "login success"]));
                return $response->withHeader("Content-Type", 'application/json')->withStatus(200);
            } else {

                $response->getBody()->write(json_encode(["message" => "login failed"]));
                return $response->withHeader("Content-Type", 'application/json')->withStatus(401);
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
