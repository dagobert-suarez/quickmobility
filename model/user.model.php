<?php
class UserModel{
	private $pdo;
	public function __CONSTRUCT(){
				try {
				  $this->pdo = DataBase::openDB();
				  $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				} catch (PDOException $e) {
					die($e->getMessage());
				}
	}
}
?>
