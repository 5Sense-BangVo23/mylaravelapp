<?php
namespace App\Services;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
class LocalUploadHandler implements UploadHandlerInterface
{
    public function upload(Request $request)
    {
        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $extension = $file->getClientOriginalExtension();
            $newFileName = 'custom_name_' . Str::random(10) . '.' . $extension;
            $path = $file->storeAs('uploads', $newFileName, 'local');
            return 'uploads/' . $newFileName;
        } else {
            return null;
        }
    }

    public function delete($publicId)
    {
        return Storage::disk('local')->delete($publicId);
    }

}
