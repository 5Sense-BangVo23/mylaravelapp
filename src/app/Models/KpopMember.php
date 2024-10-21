<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopMember extends Model
{
    use HasFactory;

    protected $fillable = ['group_id', 'name', 'roles', 'member_image'];
    protected $casts = [
        'roles' => 'array'
    ];

    public function group()
    {
        return $this->belongsTo(KpopGroup::class);
    }

    public function photos()
    {
        return $this->hasMany(KpopPhoto::class);
    }
}
