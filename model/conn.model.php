<?php
    class DataBase{
        private static $dbhost = "localhost";
        private static $dbname = "mobile";
        private static $dbuser = "root";
        private static $dbpass = "";
        private static $dbstatus = null;

        public static function openDB(){
            if (self::$dbstatus==null){
                try{
                    self::$dbstatus=new PDO("mysql:host=".self::$dbhost.";dbname=".self::$dbname,self::$dbuser,self::$dbpass);
                    self::$dbstatus->exec("SET CHARACTER utf8");
                    return self::$dbstatus;
                }catch(PDOException $e){
                    die($e->getMessage());
                }
            }
        }
        public static function closeDB(){
            self::$dbstatus=null;
        }
    }
 ?>
