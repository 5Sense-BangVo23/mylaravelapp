<?php

namespace App\Services;

use App\Models\BlgPostClass;

class PostClassHandler implements PostClassHandlerInterface{
    public function fetchClass($post){
        $post->class = BlgPostClass::where('post_id', $post->id)->get();
        
        if ($post->class->count() == 0) {

            return $post;

        }
    }
}