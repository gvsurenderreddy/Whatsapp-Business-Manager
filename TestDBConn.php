<?php

include"connect.php";
/**
 * Check if the commands already exists for the current user
 * Who is trying to save a new command for the whats app channel
 */
$commandExists = $pdo->prepare("SELECT * FROM admin  ORDER BY id ASC");
$commandExists->execute();
$existingCommands = $commandExists->fetchAll();

if (!empty($existingCommands)){

    foreach ($existingCommands as $command){
        $username = $command['username'];
        $password = $command['password'];

        echo "The username in the DB is $username and user password is $password";
    }


}else{
    header("addcommands.php");
    echo " Record Does not exist in the DB";
    exit();
}
