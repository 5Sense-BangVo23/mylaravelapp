<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopPhoto extends Model
{
    use HasFactory;

    protected $fillable = ['member_id', 'url', 'description'];

    public function member()
    {
        return $this->belongsTo(KpopMember::class);
    }
}
