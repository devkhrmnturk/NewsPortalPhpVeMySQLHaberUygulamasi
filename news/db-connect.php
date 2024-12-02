<?php
    $host='localhost';
    $dbname='newsportaldb';
    $username='root';
    $password='';

    $mysqli = new mysqli($host,$username,$password,$dbname);

    if($mysqli->connect_error) {
        die("Bağlantı hatası: " . $mysqli->connect_error);
    }

?>