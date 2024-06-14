<?php
namespace App\Services;

class ExtractHtmlHandler implements ExtractHtmlInterface
{
    public function extractHtmlFromUrl($url)
    {
        $html = file_get_contents($url);
      
        return $html;
    }
}