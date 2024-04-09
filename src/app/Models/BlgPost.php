<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BlgPost extends Model
{
    use HasFactory;

    protected $table = 'blg_posts';
    protected $fillable = [
        'title',
        'content',
        'user_id',
    ];

    public function commonData(){
        return $this->belongsTo(CmnContent::class, 'common_id');
    }

    public function class(){
        return $this->belongsTo(BlgPostClass::class, 'post_class_id');
    }

    public function comments(){
        return $this->hasMany(BlgComment::class, 'post_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }
}
