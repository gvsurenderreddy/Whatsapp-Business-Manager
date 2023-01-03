<?php

//TEST MYSQL CONNECTION

$servername = "localhost:40002";

$username = "sifhufhi";

$password = "sifhufhi";

$dbname = "wabusiness";

//$port = "40002";


$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection

if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); }

echo "Connected successfully";

$conn->close();


