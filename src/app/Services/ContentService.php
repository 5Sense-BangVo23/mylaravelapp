<?php

namespace App\Services;

class ContentService
{
    protected $handler;
   
    public function __construct(ContentHandlerInterface $handler)
    {
        $this->handler = $handler;
    }

    public function list()
    {
        return $this->handler->list();
    }
  
    public function detail($id)
    {
        return $this->handler->detail($id);
    }
}