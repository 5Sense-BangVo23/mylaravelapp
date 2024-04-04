<?php
namespace App\Services;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Storage;

class LocalUploadHandler implements UploadHandlerInterface
{
    public function upload($request)
    {
        $file = $request->file('file');
        return Storage::disk('local')->put('uploads', $file);
    }

    public function delete($publicId)
    {
        return Storage::disk('local')->delete($publicId);
    }

}
