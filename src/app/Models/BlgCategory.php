<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BlgCategory extends Model
{
    use HasFactory;

    protected $table = 'blg_categories';

    public function content(){
        return $this->belongsToMany(CmnContent::class, 'blg_content_categories', 'category_id', 'content_id');
    }
}
