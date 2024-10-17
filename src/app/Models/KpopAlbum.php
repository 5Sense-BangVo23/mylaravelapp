<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopAlbum extends Model
{
    use HasFactory;

    protected $fillable = ['group_id', 'title', 'release_date', 'description', 'number_of_tracks'];

    public function group()
    {
        return $this->belongsTo(KpopGroup::class);
    }
}
