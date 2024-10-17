<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopVideo extends Model
{
    use HasFactory;

    protected $fillable = ['song_id', 'url', 'description'];

    public function song()
    {
        return $this->belongsTo(KpopSong::class);
    }
}
