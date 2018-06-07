<?php
require_once("model/user.model.php");
class viewsController{
  private $userModel;
  public function __CONSTRUCT(){
    $this->userModel = new UserModel();
  }

  function main(){
    require_once "views/include/scope.header.php";
    require_once "views/modules/inicio.php";
    require_once "views/modules/registro.php";
    require_once "views/include/scope.footer.php";
  }
  function mas(){
    require_once "views/include/scope.header.php";
    require_once "views/modules/mas.php";
    require_once "views/include/scope.footer.php";
  }
}
?>
