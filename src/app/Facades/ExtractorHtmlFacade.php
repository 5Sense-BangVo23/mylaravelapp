<?php

namespace App\Facades;

use Illuminate\Support\Facades\Facade;

class ExtractorHtmlFacade extends Facade
{
    protected static function getFacadeAccessor()
    {
        return 'ExtractorHtmlService';
    }
}
