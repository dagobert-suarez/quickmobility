<?php
    session_start();
    require_once "model/conn.model.php";
    if (isset($_REQUEST['controller'])) {
        $controller=strtolower($_REQUEST['controller']);
        require_once "controller/$controller.controller.php";
        $controller = ucwords($controller)."Controller";
        $controller = new $controller;
        $action = isset($_REQUEST['a']) ? $_REQUEST['a']:'main';
        call_user_func(array($controller,$action));
    }else {
        $controller = "views";
        require_once "controller/$controller.controller.php";
        $controller = ucwords($controller)."Controller";
        $controller = new $controller;
        $controller->main();
    }
?>
