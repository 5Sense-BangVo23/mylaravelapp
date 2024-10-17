<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopSong extends Model
{
    use HasFactory;

    protected $fillable = ['group_id', 'title', 'album', 'release_date', 'lyrics'];

    public function group()
    {
        return $this->belongsTo(KpopGroup::class);
    }

    public function videos()
    {
        return $this->hasMany(KpopVideo::class);
    }
}
