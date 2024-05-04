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
        'content_text',
        'user_id',
    ];

    public function commonData(){
        return $this->belongsTo(CmnContent::class, 'common_id');
    }

    public function categories(){
        return $this->belongsToMany(BlgCategory::class, 'blg_content_categories', 'content_id', 'category_id', 'common_id');
    }

    public function class(){
        return $this->belongsTo(BlgPostClass::class, 'post_class_id');
    }

    public function comments(){
        return $this->hasMany(BlgComment::class, 'post_id');
    }

    public function author(){
        return $this->belongsTo(User::class, 'user_id');
    }

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($blgPost) {
            $cmnContent = new CmnContent();
            $cmnContent->save();

            $blgPost->common_id = $cmnContent->id;
        });
    }
}
