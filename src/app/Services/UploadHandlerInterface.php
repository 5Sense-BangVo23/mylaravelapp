<?php
namespace App\Services;

use Illuminate\Http\Request;

interface UploadHandlerInterface
{
    public function upload(Request $request);

    public function delete($publicId);
}
