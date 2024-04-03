<?php
namespace App\Http\Controllers\Api;
use App\Models\Media;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Illuminate\Http\Response;

class CloudinaryController {

    public function getData()
    {
        $data = Media::select('id', 'medially_type', 'medially_id', 'file_url', 'file_name', 'file_type', 'size', 'created_at', 'updated_at')->get();
        return response()->json($data);
    }

    public function remove($id)
    {
        $media = Media::findOrFail($id);
        preg_match('/\/v\d+\/(.+)\..+$/', $media->file_url, $matches);
        $publicId = $matches[1] ?? null;
    
        if ($publicId) {
            $deleted = Cloudinary::destroy($publicId);
    
            if ($deleted) {
                $media->delete();
                return response()->json(['message' => 'File deleted successfully!']);
            }
        }
    
        return response()->json(['error' => 'Failed to delete file from Cloudinary!'], Response::HTTP_INTERNAL_SERVER_ERROR);
    }

    public function view($id)
    {
        $media = Media::findOrFail($id);
        $imageUrl = $media->file_url;

        return response()->json(['imageUrl' => $imageUrl]);
    }
}