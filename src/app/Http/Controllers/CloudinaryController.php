<?php

namespace App\Http\Controllers;

use App\Services\CloudinaryUploadHandler;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;

class CloudinaryController extends Controller
{
    
    public function showUploadForm()
    {
        // $adminInfo = Cloudinary::admin();
        // $searchInfo = Cloudinary::search();
        // $uploadInfo = Cloudinary::uploadApi();

        return view('cloudinary.dashboard');
    }

   

    public function upload(Request $request)
    {
        if ($request->hasFile('file')) {

            $uploadResult = \UploadOption::upload($request); 

            if ($uploadResult) {
                return redirect()->back()->with(true, 'File uploaded successfully!');
            } else {
                return redirect()->back()->with(false, 'Failed to upload file!');
            }
        } else {
            return redirect()->back()->with(false, 'No file uploaded!');
        }
    }

}
