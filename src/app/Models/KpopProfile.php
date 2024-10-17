<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopProfile extends Model
{
    use HasFactory;


    protected $fillable = ['name', 'description'];

    public function socialAccounts()
    {
        return $this->hasMany(KpopSocialAccount::class, 'profile_id');
    }

}
