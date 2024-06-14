<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CmnContent extends Model
{
    use HasFactory;
    protected $table = 'cmn_contents';
    protected $fillable = [
        'content_type',
        'publish_started_at',
    ];

    public function categories(){
        return $this->belongsToMany(BlgCategory::class, 'blg_content_categories', 'content_id', 'category_id', 'id');
    }

}
