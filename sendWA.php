<?php


use GuzzleHttp\Psr7\Request;

include 'vendor/autoload.php';


$number = $_POST['number'];
$message = $_POST['message'];


$client = new GuzzleHttp\Client();

$headers = [
    'Authorization' => 'Bearer EAAI3PuCd988BABXQDVntUDL8HKVsuYnJWpymPDu3CZCM8Ad6OZAViosqL9CGZCuSxnWZAfYiZAogPZBhT3WINZBaB6S50dexOHFSZBk4OZAZACwogNnaGsFOZAfxxwkIZBNbTYKpX5elZAYBf7GZCnxAhkfUlVQyJVwxIlk5v0iCWovUsZA8xPZCfl7Cv3sZBZBObzC10ZB9Y0QchObTGSnywZDZD',
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