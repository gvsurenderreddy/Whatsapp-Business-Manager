<?php
//Page To CREATE COMMANDS

// Include config file

require_once "config.php";

// Define variables and initialize with empty values

$command = $description = "";

$command_err = $description_err = "";

// Processing form data when form is submitted

if($_SERVER["REQUEST_METHOD"] == "POST"){

    // Validate command

    $input_command = trim($_POST["command"]);

    if(empty($input_command)){

        $command_err = "Please enter a command.";

    } elseif(!filter_var($input_command, FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z\s]+$/")))){

        $command_err = "Please enter a valid command.";

    } else{

        $command = $input_command;

    }

    // Validate description

    $input_description = trim($_POST["description"]);

    if(empty($input_description)){

        $description_err = "Please enter a description.";

    } else{

        $description = $input_description;

    }

    // Check input errors before inserting in database

    if(empty($command_err) && empty($description_err)){

        // Prepare an insert statement

        $sql = "INSERT INTO commands (command, description) VALUES (?, ?)";



        if($stmt = mysqli_prepare($link, $sql)){

            // Bind variables to the prepared statement as parameters

            mysqli_stmt_bind_param($stmt, "ss", $param_command, $param_description);



            // Set parameters

            $param_command = $command;

            $param_description = $description;



            // Attempt to execute the prepared statement

            if(mysqli_stmt_execute($stmt)){

                // Records created successfully. Redirect to landing page

                header("location: index.php");

                exit();

            } else{

                echo "Something went wrong. Please try again later.";

            }

        }



        // Close statement

        mysqli_stmt_close($stmt);

    }



    // Close connection

    mysqli_close($link);

}