<?php

namespace App\Services;

class ContentClassService
{
    protected $handler;
   
    public function __construct(ContentClassHandlerInterface $handler)
    {
        $this->handler = $handler;
    }

    public function searchId($id)
    {
        return $this->handler->searchId($id);
    }
  
    public function searchName($name)
    {
        return $this->handler->searchName($name);
    }
  
    public function searchSlug($slug)
    {
        return $this->handler->searchSlug($slug);
    }
  
    public function fetchModel($content_type)
    {
        return $this->handler->fetchModel($content_type);
    }
  
    public function fetchService($content_type)
    {
        return $this->handler->fetchService($content_type);
    }
}