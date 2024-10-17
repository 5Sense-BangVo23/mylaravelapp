<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopGroup extends Model
{
    use HasFactory;

    protected $fillable = ['name','active', 'debut_date', 'agency','thumbnails','cover_image','profile_image' ,'description', 'genre'];

    public function members()
    {
        return $this->hasMany(KpopMember::class);
    }

    public function fanClubs()
    {
        return $this->hasMany(KpopFanClub::class);
    }

    public function songs()
    {
        return $this->hasMany(KpopSong::class);
    }

    public function albums()
    {
        return $this->hasMany(KpopAlbum::class);
    }

    public function awards()
    {
        return $this->hasMany(KpopAward::class);
    }

    public function merchandise()
    {
        return $this->hasMany(KpopMerchandise::class);
    }

    public function collaborations()
    {
        return $this->hasMany(KpopCollaboration::class);
    }
}
