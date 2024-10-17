<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopMerchandise extends Model
{
    use HasFactory;

    protected $fillable = ['group_id', 'item_name', 'price', 'description'];

    public function group()
    {
        return $this->belongsTo(KpopGroup::class);
    }
}
