<?php
namespace App\Http\Controllers\Api;
use App\Models\Media;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class CloudinaryController {

    public function getData()
    {
        $data = Media::select('id', 'medially_type', 'medially_id', 'file_url', 'file_name', 'file_type', 'size', 'created_at', 'updated_at')->get();
        return response()->json($data);
    }
}