<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GoogleDriveFile extends Model
{
    use HasFactory;

    protected $table = 'google_drive_files'; 

    protected $fillable = [
        'file_name',
        'google_drive_id',
        'mime_type',
        'size',
        'google_drive_url',
        'parent_folder_id',
        'url_type',
        'kpop_group_id'
    ];

    public function kpopGroup()
    {
        return $this->belongsTo(KpopGroup::class, 'kpop_group_id');
    }
}
