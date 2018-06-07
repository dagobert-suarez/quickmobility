<?php
require_once("model/user.model.php");
class viewsController{
  private $userModel;
  public function __CONSTRUCT(){
    $this->userModel = new UserModel();
  }
  function mas(){
    require_once "views/include/scope.header.php";
    require_once "views/modules/mas.php";
    require_once "views/modules/scope.footer.php";
  }
}

?>
