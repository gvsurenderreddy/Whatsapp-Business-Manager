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

    //connect to database
    $servername = "localhost";
    $name = "root";
    $password = "";
    $dbname = "whatsapp";

    // Check Number in Database and return the name
//    $conn = new mysqli($servername, $name, $password, $dbname);
//    if ($conn->connect_error) {
//        die("Connection failed: " . $conn->connect_error);
//    }
//    $sql = "SELECT * FROM contacts WHERE number = '$from'";
//    $result = $conn->query($sql);
//    if ($result->num_rows > 0) {
//        while ($row = $result->fetch_assoc()) {
//            $name = $row['name'];
//        }
//    } else {
//        $name = "Unknown";
//    }
    $name = "Gundo"; // for testing
    $withNo = $from; // for testing
//    $reply = "Thank you for your message $name. We will get back to you shortly, with text or call via $withNo ";
//

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

//    try {
//        $message = $twilio->messages
//            ->create("whatsapp:$from", // to
//                array(
//                    "from" => "whatsapp:+14155238886",
//                    "body" => "$reply"
//                )
//            );
//    } catch (\Twilio\Exceptions\TwilioException $e) {
//        echo $e->getMessage();
//    }

    //GET IF MESSAGE WAS SENT

    $log = fopen("sent-log.txt", "a");
    fwrite($log, "Message Sent  to $from: $name  \n");
    fclose($log);
}
