<?php
declare(strict_types=1);


$servername = "localhost";

$username = "gundo";

$password = "gundo";

$dbname = "gundo";

$port = 24003;

$conn = new mysqli($servername, $username, $password, $dbname, $port);

if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); }
