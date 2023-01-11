<?php

namespace Tower;

class Tower
{
    public function __construct()
    {
        $this->app = new Application();
    }

    public function app()
    {
        return $this->app;
    }

    public function run()
    {
        $this->app->run();
    }

}