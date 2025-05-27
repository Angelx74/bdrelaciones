<?php
    header("Content-Type: application/json");
    header("Access-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Angel Preciado", "correo" => "angelpro@gmail.com"],
        ["id" => 1, "nombre" => "Jose Lopez", "correo" => "jose866@gmail.com"],
        ["id" => 1, "nombre" => "Diego Mario", "correo" => "diemar@gmail.com"],
    ];

    echo json_encode($usuarios);

?>