<?php

namespace App\Services;

use App\Models\BlgPost;
use App\Models\MstContentClass;

class ContentClassHandler implements ContentClassHandlerInterface
{
    public function searchId(int $id)
    {
       return MstContentClass::find($id);
    }

    public function searchName(string $name)
    {
       return MstContentClass::where('name', $name)->first();
    }

    public function searchSlug(string $slug)
    {
       return MstContentClass::where('slug', $slug)->first();
    }

    public function fetchModel(int $content_type)
    {
        $content_name =  MstContentClass::pluck('name', 'id')[$content_type] ?? null;
        return match ($content_name) {
            'Post' => new BlgPost(),
            default => null,
        };
    }

    public function fetchService(int $content_type)
    {
        $content_name = MstContentClass::pluck('name', 'id')[$content_type] ?? null;
       
        return match ($content_name) {
            'Post Aticle' => new BlgPost(),
            default => null,
        };
    }
}