<?php

namespace App\Services;

interface ContentClassHandlerInterface
{
    public function searchId(int $id);
    public function searchName(string $name);
    public function searchSlug(string $slug);
    public function fetchModel(int $content_type);
    public function fetchService(int $content_type);
}