<?php

error_reporting(0);

include_once 'connect.php';


/** Handle Input And Output Strings submitted by addcommands.php */

///**
// * @return array
// */
//function userInput(): array
//{
//    $input = $_POST['input'];
//    $output = $_POST['output'];
    #=================#

    $userInput = "My name is Borat Sagdiyev and I am from Kazakhstan and I am a very nice person, Very 
    nice";
    $userOutput = "Hello Borat Sagdiyev, I am from the United States of America and I am a very nice person, Very 
    nice";
    echo "The user input is $userInput and the user output is $userOutput";
    $time = time();
//    return array($input, $output);
//}


//        list($input, $output) = userInput();
//
//        $command = new Janitor\cleantOut();
//        $userInput = $command->cleanInputString($input);
//        $userOutput = $command->cleanOutputString($output);

        /**
         * Check if the commands already exists for the current user
         * Who is trying to save a new command for the whats app channel
         */
//        $commandExists = $pdo->prepare("SELECT * FROM admin  ORDER BY id ASC");
//        $commandExists->execute();
//        $existingCommands = $commandExists->fetchAll();
//
//        if (!empty($existingCommands)) {
//
//            foreach ($existingCommands as $command) {
//                $username = $command['username'];
//                $password = $command['password'];
//
//                echo "The username in the DB is $username and user password is $password";
//            }
//
//        }

        /** Insert to bot table */
        $insert = $pdo->prepare("INSERT INTO bot (input, reply,timestamp) VALUES (:input, :output,:time)");
        $insert->bindParam(':input', $userInput);
        $insert->bindParam(':output', $userOutput);
        $insert->bindParam(':time', $time);
        $insert->execute();

        if ($insert) {
            echo "Command Added Successfully";
        } else {
            echo "Command Not Added";
        }


?>







