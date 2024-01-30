<?php

namespace Slim\Middleware;

use Firebase\JWT\JWT as JWTJWT;
use Firebase\JWT\Key;

Class AuthenticationMiddleware {
    public static function generateToken(){
        $key = 'flymetothemoon'; 

        $tokenId = base64_encode(random_bytes(32));
        $issuedAt = time();
        $expirationTime = $issuedAt + 3600; 

        $data = [
            'iat' => $issuedAt, 
            'exp' => $expirationTime, 
            'jti' => $tokenId, 
        ];

        $token = JWTJWT::encode($data, $key, 'HS256');

        return $token;
    }

    public static function validateToken($token){
        $key = 'flymetothemoon'; 

        try {
            $decoded = JWTJWT::decode($token, new Key($key, 'HS256'));
            
            if(!!$decoded){
                return true;
            }
        } catch (\Firebase\JWT\ExpiredException $e) {
            // Token expired
            return false;
        } catch (\Exception $e) {
            // Other validation errors
            return false;
        }
    }
}