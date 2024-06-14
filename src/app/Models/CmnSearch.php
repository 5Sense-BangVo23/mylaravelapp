<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CmnSearch extends Model
{
    use HasFactory;

    protected $table = 'cmn_searches';
    protected $fillable = [
        'content_type',
        'content_id',
        'content_text',
        'keyword',
        'exclusion_keyword',
        'categories_id',
        'categories_name',
        'status',
    ];
}
