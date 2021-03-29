<?php

class DB{
    public static function conectar(){
        try{
            $pdo = new pdo('mysql:host=us-cdbr-east-03.cleardb.com;dbname=heroku_8bdee80b107b2c7;charset=utf8','bdc0091bca7efa','e3799578');
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
        }catch(Exception $e){
            die($e->getMessage());
        }
    }
}

?>