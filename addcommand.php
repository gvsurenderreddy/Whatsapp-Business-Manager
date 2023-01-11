<?php

declare(strict_types=1);

error_reporting(0);

//Todo: Connect to the database and add the comment the user is trying save


$command = $_POST['command'];

$response = $_POST['response'];


if (!empty($command)){

    include"connect.php";

    /**
     * Check if the commands already exists for the current user
     * Who is trying to save a new command for the whats app channel
     */
    $commandExists = $pdo->prepare("SELECT * FROM commands WHERE account_id = '$sessionAccount' ORDER BY timestamp ASC");
    $commandExists->execute();
    $existingCommands = $commandExists->fetchAll();

    if (!empty($existingCommands)){
        $err = "Command Already Exists";
        header("addcommands.php");

    }




}else{

    echo"Shit is not flying";
}

exit();
