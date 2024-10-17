<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopCollaboration extends Model
{
    use HasFactory;

    protected $fillable = ['group_id', 'title', 'date_collaborated', 'description'];

    public function group()
    {
        return $this->belongsTo(KpopGroup::class);
    }

    public function groupCollaborations()
    {
        return $this->hasMany(KpopGroupCollaboration::class);
    }
}
