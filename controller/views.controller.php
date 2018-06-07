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
    require_once "views/modules/rep.php";
    require_once "views/include/scope.footer.php";
  }
  function newUser(){
    $data=$_POST['data'];
    $result = $this->userModel->createUser($data);
    echo '<script language="javascript">alert("<div class="exit">Creada con exito</div>");</script>';
    echo "<script>window.location.href='landing'</script>";
  }
}
?>
