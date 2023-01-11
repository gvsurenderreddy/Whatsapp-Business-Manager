<?php
declare(strict_types=1);

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

$number = $_POST['number'];
$message = $_POST['message'];

try {
    $twilio = new Client($sid, $token);
} catch (ConfigurationException $e) {
    //ToDo: It would be better if there was a better error handler here instead of the default
    echo $e->getMessage();
}
// A Twilio number you own with Voice capabilities
$twilio_number = "+15017122661";

// Where to make a voice call (your cell phone?)
$to_number = "+27636754400";

try {
    $twilio = new Client($sid, $token);
    $twilio->account->calls->create(
        $to_number,
        $twilio_number,
        array(
            "url" => "http://demo.twilio.com/docs/voice.xml"
        )
    );
} catch (\Twilio\Exceptions\TwilioException $e) {
    echo $e->getMessage();
    if ($message->sid) {
        header('Location: send_WA.php?success=1');
        echo "$message";
    } else {
        header('Location: index.php?success=0');
        echo "Message not sent";
    }
    exit();
}







