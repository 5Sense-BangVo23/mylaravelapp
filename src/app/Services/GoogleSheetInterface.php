<?php

namespace App\Services;

interface GoogleSheetInterface
{
    /**
     * Get the spreadsheet ID
     * @return string
     */
    public function getSpreadsheetId();

    /**
     * Get the URL of the Google Sheet based on sheet title
     * @param string $sheetTitle
     * @return string
     */
    public function getGoogleSheetUrl($sheetTitle);

    public function buildSheetDocument($sheetTitle);


    
}
