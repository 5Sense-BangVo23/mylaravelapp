<?php

namespace App\Services;

use Exception;

class GoogleSheetService 
{
    protected $handler;
   
    public function __construct(GoogleSheetInterface $handler)
    {
        $this->handler = $handler;
    }

    public function getSpreadsheetId()
    {
        return $this->handler->getSpreadsheetId();
    }

    public function getGoogleSheetUrl($sheetTitle)
    {
        return $this->handler->getGoogleSheetUrl($sheetTitle);
    }

    public function buildSheetDocument($sheetTitle)
    {
        return $this->handler->buildSheetDocument($sheetTitle);
    }

    
}