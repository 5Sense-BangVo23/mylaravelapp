<?php

namespace App\Services;

class PostClassService {

    protected $handler;
   
    public function __construct(PostClassHandlerInterface $handler)
    {
        $this->handler = $handler;
    }

    public function fetchClass($post)
    {
        return $this->handler->fetchClass($post);
    }

}