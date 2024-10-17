<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopGroupCollaboration extends Model
{
    use HasFactory;

    protected $fillable = ['collaboration_id', 'group_id'];

    public function collaboration()
    {
        return $this->belongsTo(KpopCollaboration::class);
    }

    public function group()
    {
        return $this->belongsTo(KpopGroup::class);
    }
}
