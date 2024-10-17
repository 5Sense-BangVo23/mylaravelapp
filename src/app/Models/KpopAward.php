<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KpopAward extends Model
{
    use HasFactory;

    protected $fillable = ['group_id', 'award_name', 'date_awarded', 'description'];

    public function group()
    {
        return $this->belongsTo(KpopGroup::class);
    }
}
