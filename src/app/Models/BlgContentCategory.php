<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BlgContentCategory extends Model
{
    use HasFactory;

    protected $table = 'blg_content_categories';
    protected $fillable = [
        'category_id',
        'content_id',
    ];
}
