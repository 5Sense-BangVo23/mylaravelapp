<?php

namespace App\Services;

class UploadService
{
    protected $handler;
   
    public function __construct(UploadHandlerInterface $handler)
    {
        $this->handler = $handler;
    }

    public function upload($file)
    {
        return $this->handler->upload($file);
    }

    public function delete($publicId)
    {
        return $this->handler->delete($publicId);
    }
}