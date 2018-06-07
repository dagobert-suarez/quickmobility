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
	function createUser($data){
		try{
			$sql = "INSERT INTO usuario (id_usu,nom_usu,ape_usu,email_usu,tel_usu,contra) VALUES (?,?,?,?,?,?)";
			$query = $this->pdo->prepare($sql);
			$query->execute(array($data[0],$data[1],$data[2],$data[3],$data[4],$data[5]));
			$msn = "registro con exito";
		}catch (PDOException $e) {
			die($e->getMessage());
		}
		return $msn;
	}
	}
?>
