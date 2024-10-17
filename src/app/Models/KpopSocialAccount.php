<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopSocialAccount extends Model
{
    use HasFactory;

    protected $fillable = ['profile_id', 'platform', 'username'];

    public function profile()
    {
        return $this->belongsTo(KpopProfile::class, 'profile_id');
    }
}
