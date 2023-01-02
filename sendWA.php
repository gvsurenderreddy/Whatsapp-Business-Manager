<?php


use GuzzleHttp\Psr7\Request;

include 'vendor/autoload.php';


$number = $_POST['number'];
$message = $_POST['message'];


$client = new GuzzleHttp\Client();

$token ="EAAI3PuCd988BADxJIt4Hr79ktMAp7z7FgkqoRJnyYZB1Ri4FkV3un4kKAqoJKCxdZChFZAVeQFF90JN8ZBgZBLTzZBtmfZBI2EyuIlzznB8NvAZCoMYg4ysI76kPXTtr9D4JbkoPqtrEEH2uu1ZChch1VTla1Ns2n0nHXBZCscPRDqyvuW9Pv5kbb3WVjrlXTtavotTLex1LGqZAAZDZD";
$headers = [
    'Authorization' => 'Bearer '.$token,
    'Content-Type' => 'application/json'
];
////$body = '{ "messaging_product":
////    "whatsapp",
////    "to": "27636754400",
////    "type": "template",
////     "template":
////         {
////          "name":
////          "hello_world",
////          "language":
////               {
////                "code":
////               "en_US"
////               }
////       }
////   }';
//
//    //Dynamically create the body from above structure
    $body = '{
    "messaging_product":
    "whatsapp",
        "to":  "'.$number.'",
         "type":
         "template",
          "template":
              {

               "name": "hello_world",

               "language":
                      {
                       "code": "en_US"

                      }
                   }
           }';



$request = new Request('POST', 'https://graph.facebook.com/v15.0/107332978823034/messages', $headers, $body);

$res = $client->sendAsync($request)->wait();

//echo $res->getBody()->getContents();

if ($res->getStatusCode() == 200) {
    echo "Message sent successfully";
    header("Location: index.php");
    exit();
} else {
    echo "Message failed to send";
    header("Location: index.php");
    exit();
}