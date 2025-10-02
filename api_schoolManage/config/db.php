<?php 

class Db {
    public static function con(){
        $HOST = 'localhost';
        $PORT = '3307';
        $USER = 'root';
        $DB = 'school_manage';
        $PASSWORD = '';

        try{
            $connexionDB = new PDO(
                sprintf('mysql:host=%s;dbname=%s;port=%s',$HOST,$DB,$PORT),
                $USER,
                $PASSWORD
            );
            $connexionDB->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
        }catch(Exception $e){
            die('Erreur '. $e->getMessage());
        }
        return $connexionDB;
    }
}