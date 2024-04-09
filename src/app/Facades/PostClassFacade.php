<?php

namespace App\Facades;

use Illuminate\Support\Facades\Facade;

class PostClassFacade extends Facade
{
    protected static function getFacadeAccessor()
    {
        return 'PostClassService';
    }
}