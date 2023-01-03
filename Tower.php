<?php
//SCRIPT TO PROCESS INCOMING MESSAGES FROM TWILIO AND SEND A REPLY TO THE SENDER

include_once 'vendor/autoload.php';

use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Psr7\Request;
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
//CREATE MOCK CHATBOT RESPONSE BASED on CERTAIN COMMANDS , WHEN USER SAYS HELLO, THE BOT WILL REPLY WITH A WELCOME MESSAGE AND WHEN USER SAYS BYE, THE BOT WILL REPLY WITH A GOODBYE MESSAGE AND WHEN USER SAYS ANYTHING ELSE, THE BOT WILL REPLY WITH A DEFAULT MESSAGE
    //DO A REGEEX MATCH TO CHECK IF THE MESSAGE CONTAINS A CERTAIN WORD
    if (preg_match('/hello/i', $body)) {
        $reply = "Hello, Welcome to the chatbot";

    } elseif (preg_match('/bye/i', $body)) {
        $reply = "Goodbye";
    } // add 30 more elseif statements to check for other commands
    elseif (preg_match('/help/i', $body)) {
        $reply = "You can say hello, bye, help, etc";
    } elseif (preg_match('/how are you/i', $body)) {
        $reply = "I am fine, thanks for asking";
    } elseif (preg_match('/what is your name/i', $body)) {
        $reply = "My name is Chatbot";
    } elseif (preg_match('/what is your age/i', $body)) {
        $reply = "I am 1 day old";
    } //add more commands to mock a news app and balance check app
    elseif (preg_match('/news/i', $body)) {
        $reply = "Here is the latest news";
    } elseif (preg_match('/balance/i', $body)) {
        $reply = "Your balance is 1000";
    } elseif (preg_match('/weather/i', $body)) {
        $reply = "The weather is sunny";
    } elseif (preg_match('/time/i', $body)) {
        $reply = "The time is 10:00am";
    } elseif (preg_match('/date/i', $body)) {
        $reply = "The date is 1st January 2020";
    } elseif (preg_match('/location/i', $body)) {
        //Send mock GPS location
        $reply = "https://www.google.com/maps/place/37.4224764,-122.0842499";
    }//NEWS ARTICLES, WEATHER, TIME, DATE, LOCATION, BALANCE, ETC, make bot to send 1-10 numbers so to reply to user inputs based on number selected mock a municipal app
    elseif (preg_match('/1/i', $body)) {
        //
        $reply = new GuzzleHttp\Client();
            $response = $reply->request('GET', 'https://newsapi.org/v2/top-headlines?country=us&apiKey=ab57555de8074a80af9454771c1d1a9b');

        $reply = json_decode($response->getBody()->getContents());
     //Detailed news article
       // $reply = $reply->articles[0]->title;



    } elseif (preg_match('/2/i', $body)) {
        //Weather
//        //Get weather through api and send to user
//        $client = new GuzzleHttp\Client();
//        $request = new Request('GET', 'https://api.open-meteo.com/v1/forecast?latitude=-25.74&longitude=28.19&hourly=temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature');
//        $res = $client->sendAsync($request)->wait();
//        $data = json_decode($res->getBody(), true);
//    //Long Detailed weather with logic and advice on what to wear
//        $reply = "The weather is " . $data['forecast'][0]['hourly']['temperature_2m']['0'] . " degrees celsius with a humidity of " . $data['forecast'][0]['hourly']['relativehumidity_2m']['0'] . " and a dew point of " . $data['forecast'][0]['hourly']['dewpoint_2m']['0'] . " degrees celsius. The apparent temperature is " . $data['forecast'][0]['hourly']['apparent_temperature']['0'] . " degrees celsius. ";
//        if ($data['forecast'][0]['hourly']['temperature_2m']['0'] < 10) {
//            $reply .= "It is cold today, wear a jacket and a scarf";
//        } elseif ($data['forecast'][0]['hourly']['temperature_2m']['0'] > 10 && $data['forecast'][0]['hourly']['temperature_2m']['0'] < 20) {
//            $reply .= "It is cool today, wear a jacket";
//        } elseif ($data['forecast'][0]['hourly']['temperature_2m']['0'] > 20 && $data['forecast'][0]['hourly']['temperature_2m']['0'] < 30) {
//            $reply .= "It is warm today, wear a t-shirt";
//        } elseif ($data['forecast'][0]['hourly']['temperature_2m']['0'] > 30) {
//            $reply .= "It is hot today, wear a t-shirt and shorts";
//        } else {
//            $reply .= "It is a nice day today, wear whatever you want";
//        }

        //Send mock weather with breaks and emojis to make it look cute
        $reply = "The weather is sunny ☀️ with a temperature of 25 degrees celsius. It is a nice day today, wear whatever you want";

    } elseif (preg_match('/3/i', $body)) {
        $reply = "You selected 3";
    } elseif (preg_match('/4/i', $body)) {
        $reply = "You selected 4";
    } elseif (preg_match('/5/i', $body)) {
        $reply = "You selected 5";
    } elseif (preg_match('/6/i', $body)) {
        //mMock a balance check app with long description and links
        $reply = "Your balance is 1000. You can check your balance by dialing *120*1# or by sending a message with the word balance to 120. You can also check your balance by logging into your account at https://www.example.com/login. You can also check your balance by downloading our app at https://www.example.com/app";

    } elseif (preg_match('/7/i', $body)) {
        //Help :Long explanation of how to use the app
        $reply = "You can check your balance by dialing *120*1# or by sending a message with the word balance to 120. You can also check your balance by logging into your account at https://www.example.com/login. You can also check your balance by downloading our app at https://www.example.com/app";
    } elseif (preg_match('/8/i', $body)) {
        //Reply with a twitter top trends screenshot
        $reply = "https://www.example.com/trends.png";
    } elseif (preg_match('/9/i', $body)) {
        $reply = "You selected 9";
    } elseif (preg_match('/10/i', $body)) {
        $reply = "You selected 10";
    } else {
       //Long message with all the numbers with their responses next to them take number and mock reply
        $arr = array(
            "1. News<br>2. Weather<br>3. Time<br>4. Date<br>5. Location<br>6. Balance<br>7. Help<br>8. Trends<br>9. 9<br>10. 10"
        );
        $reply = implode(" ", $arr);

    }

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
     // $reply = "Thank you for your message $name. We will get back to you shortly, with text or call via $withNo ";


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
    echo "Message sent successfully";
   echo $reply;
    $log = fopen("log.txt", "a");
    fwrite($log, "Message received from $from: $body, $time \n");
    fclose($log);
}
