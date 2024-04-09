<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CmnBanner extends Model
{
    use HasFactory;
    protected $table = 'cmn_banners';
    protected $fillable = ['title', 'image', 'link', 'position', 'status'];
}
