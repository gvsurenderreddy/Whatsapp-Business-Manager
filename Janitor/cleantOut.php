<?php

namespace Janitor;

class cleantOut
{

    /** Clean Out All The Necessary Strings
     * To Prevent SQL Injection Attacks
     * TODO: Add More String Cleaning Functions
     * Function to clean out the input string
     */
    public static function cleanInputString($command)
    {

        $command = trim($command);

        $command = stripslashes($command);

        return htmlspecialchars($command);

    }

    /** Function to clean out the output string */
    public static function cleanOutputString($reply)
    {

        $reply = trim($reply);

        $reply = stripslashes($reply);

        $reply = htmlspecialchars($reply);

        return $reply;

    }

    /** Function to clean out the username string */
    public static function cleanUsernameString($username)
    {

        $username = trim($username);

        $username = stripslashes($username);

        $username = htmlspecialchars($username);

        return $username;

    }
}