<?php

namespace Tower;

class Application
{

    public function __construct()
    {
        $this->app = new Application();

        $this->app->bind('config', function () {
            return new Config();
        });

        $this->app->bind('request', function () {
            return new Request();
        });

        $this->app->bind('response', function () {
            return new Response();
        });

        $this->app->bind('router', function () {
            return new Router();
        });

        $this->app->bind('view', function () {
            return new View();
        });

        $this->app->bind('session', function () {
            return new Session();
        });

        $this->app->bind('cookie', function () {
            return new Cookie();
        });

        $this->app->bind('database', function () {
            return new Database();
        });

        $this->app->bind('auth', function () {
            return new Auth();
        });

        $this->app->bind('hash', function () {
            return new Hash();
        });

        $this->app->bind('validator', function () {
            return new Validator();
        });

        $this->app->bind('csrf', function () {
            return new Csrf();
        });

        $this->app->bind('cache', function () {
            return new Cache();
        });

        $this->app->bind('file', function () {
            return new File();
        });

        $this->app->bind('mail', function () {
            return new Mail();
        });

        $this->app->bind('encryption', function () {
            return new Encryption();
        });

        $this->app->bind('encryption', function () {
            return new Encryption();
        });

        $this->app->bind('encryption', function () {
            return new Encryption();
        });

        //
    }

    private function bind(string $string, \Closure $param): void
    {
        $this->app->bind($string, $param);
    }
}