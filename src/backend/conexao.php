<?php

$servername = "";
$username = "root";
$password = "senha123";
$database = "bancoDeDados";

$link = new mysqli($servername, $username,$password,$database);

if(mysqli_connect_error()){
    printf("Connection failed: %s\n", mysqli_connect_error);
    exit();
}

?>