<?php
//SCRIPT TO PROCESS INCOMING MESSAGES FROM TWILIO AND SEND A REPLY TO THE SENDER

include_once 'vendor/autoload.php';

use Twilio\Exceptions\ConfigurationException;
use Twilio\Rest\Client;


$sid = "ACbad36ae030c637cf243de4663a3ae9a1";

$token = "4d7ebd5e85cd4e824c1f6fe4ac5b80b0";

try {
    $twilio = new Client($sid, $token);
} catch (ConfigurationException $e) {
    echo $e->getMessage();
}

if (isset($_REQUEST['Body'])) {
    $body = $_REQUEST['Body'];
    $from = $_REQUEST['From'];
    //STRIP CELL NUMBERS FROM whatsapp:+27636754400
    $from = substr($from, 10);
    $from = "+" . $from;
    $to = $_REQUEST['To'];
    $time = $_REQUEST['DateSent'];
    $reply = "Thank you for your message. We will get back to you shortly";

    //connect to database
    $servername = "localhost";
    $name = "root";
    $password = "";
    $dbname = "whatsapp";

//    // Create connection
//    $conn = new mysqli($servername, $name, $password, $dbname);
//    // Check connection
//    if ($conn->connect_error) {
//        die("Connection failed: " . $conn->connect_error);
//    }
//
//    $sql = "INSERT INTO replies (message, reply, time)
//
//    VALUES ('$body', '$reply', '$time')";
//
//
//    if ($conn-> query($sql) === TRUE) {
//        echo "New record created successfully";
//    } else {
//        echo "Error: " . $sql . "<br>" . $conn->error;
//    }
//
//    $conn->close();

    //send reply
//    try {
//        $client = new Client($sid, $token);
//    } catch (ConfigurationException $e) {
//    }
//    try {
//        $client->messages->create($from, ['from' => $to, 'body' => $reply]);
//    } catch (\Twilio\Exceptions\TwilioException $e) {
//    }

    try {
        $message = $twilio->messages
            ->create("whatsapp:$from", // to
                array(
                    "from" => "whatsapp:+14155238886",
                    "body" => "$reply"
                )
            );
    } catch (\Twilio\Exceptions\TwilioException $e) {
        echo $e->getMessage();
    }

    $log = fopen("log.txt", "a");
    fwrite($log, "Message received from $from: $body, $time \n");
    fclose($log);
}
