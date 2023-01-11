<?php

namespace App\Http\Controllers;
class encryption
{
    //New encryption function for the new session  key and the new session iv end-to-end encryption
    public function encrypt($data, $key, $iv)
    {
        $encrypted = openssl_encrypt($data, 'aes-256-cbc', $key, 0, $iv);
        return $encrypted;
    }

    //message decryption function for the new session key and the new session iv end-to-end encryption
    /* @param $data
     * @param $key
     * @param $iv
     * @return string
     */
    public function decrypt($data, $key, $iv): bool|string
    {
        $decrypted = openssl_decrypt($data, 'aes-256-cbc', $key, 0, $iv);
        return $decrypted;
    }


    //webhook encryption function for the new session key and the new session iv end-to-end encryption

    public function encrypt_webhook($data, $key, $iv)
    {
        $encrypted = openssl_encrypt($data, 'aes-256-cbc', $key, 0, $iv);
        return $encrypted;
    }

    //sha256 encryption function for the new session key and the new session iv end-to-end encryption

    public function sha256($data)
    {
        $encrypted = hash('sha256', $data);
        return $encrypted;
    }

    //mysql connector for the app to connect to the database and perform CRUD operations on the database

    public function mysql_connector($data)
    {
        $encrypted = hash('sha256', $data);
        return $encrypted;
    }



}