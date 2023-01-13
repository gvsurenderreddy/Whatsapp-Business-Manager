<?php
declare(strict_types=1);

include_once 'vendor/autoload.php';

use Twilio\Exceptions\ConfigurationException;
use Twilio\Exceptions\TwilioException;
use Twilio\Rest\Client;
$userNumber = $_POST['number'];
$userMessage = $_POST['message'];

$sid = "ACbad36ae030c637cf243de4663a3ae9a1";

$token = "4d7ebd5e85cd4e824c1f6fe4ac5b80b0";

try {
    $twilio = new Client($sid, $token);
} catch (ConfigurationException $e) {
    echo $e->getMessage();
}

$number = $_POST['number'];
$message = $_POST['message'];

try {
    $twilio = new Client($sid, $token);
} catch (ConfigurationException $e) {
    echo $e->getMessage();
}

try {
    $message = $twilio->messages
        ->create("whatsapp:$number", // to
            array(
                "from" => "whatsapp:+14155238886",
                "body" => "$message"
            )
        );

} catch (TwilioException $e) {
    /** Do better error handling here */
    echo $e->getMessage();

}

if ($message->sid) {

//    include_once 'connect.php';
//    try {
//        $sql = "INSERT INTO convos (inp, reply) VALUES (:inp, :reply)";
//        $stmt = $pdo->prepare($sql);
//    $stmt->execute(['inp' => $userNumber, 'reply' => $userMessage]);
//        echo "Message sent successfully";
//    } finally {
//        $pdo = null;
//
//        echo "Message sent successfully";
//    }
//    echo "Message sent successfully";
    header('Location: send_WA.php?success=1');
    echo "Message sent successfully";
} else {
    header('Location: index.php?success=0');
    echo "Message not sent";
}
exit();

