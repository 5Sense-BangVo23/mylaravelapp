<?php

namespace App\Services;

use Illuminate\Http\Request;

class ExtractHtmlService {
    protected $handler;

    public function __construct(ExtractHtmlInterface $handler)
    {
        $this->handler = $handler;
    }

    public function extractHtmlFromUrl($url)
    {
        return $this->handler->extractHtmlFromUrl($url);
    }
}