<?php

namespace App\Services;

class GoogleSheetHandler implements GoogleSheetInterface
{
    public $spreadsheet_id;
    private $client;
    public $google_sheet_service;
    private $sheetCache = [];
 // private $gid_code;

    
    /**
     * ProjectSheetService constructor.
     * @throws Exception
     */
    public function __construct()
    {
        $this->spreadsheet_id = config('googledatastudio.google_sheet_id');
        // $this->gid_code = config('googledatastudio.gid_code');
        
        $this->client = new \Google_Client();
        $this->client->setAuthConfig(config('googledatastudio'));
        $this->client->addScope('https://www.googleapis.com/auth/spreadsheets');

        try {
            $this->client->fetchAccessTokenWithAssertion();
            // $this->google_sheet_service = new Sheets($this->client);
        } catch (\Exception $e) {
            throw new \Exception('Unable to initialize Google Sheets service: ' . $e->getMessage());
        }
    }

    public function getSpreadsheetId()
    {
        return $this->spreadsheet_id;
    }

    /*
        * Get the URL of the Google Sheet
    */
    public function getGoogleSheetUrl($sheetTitle)
    {
        // $gid_code = $this->getGidBySheetTitle($sheetTitle);
        // return 'https://docs.google.com/spreadsheets/d/' . $this->spreadsheet_id . '/edit#gid=' . $gid_code;
    }

    public function buildSheetDocument($sheetTitle)
    {
       
    }

}