<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;

class HtmlExtractorService
{
    public function extractHtmlFromUrl($url)
    {
       
        $response = Http::get($url)->throw();

        

        if ($response->ok()) {
            return $response->body();
        }

        return null;
    }
    

    
    

    public function extractHtmlFromText($text)
    {

        if (!empty($text)) {
           
            return $text;
        }

        return null;
    }
}
