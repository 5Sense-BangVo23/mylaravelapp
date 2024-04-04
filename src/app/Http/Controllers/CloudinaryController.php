<?php

namespace App\Http\Controllers;

use App\Models\Media;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Illuminate\Support\Facades\Request;

class CloudinaryController extends Controller
{
    public function showUploadForm()
    {
        // $adminInfo = Cloudinary::admin();
        // $searchInfo = Cloudinary::search();
        // $uploadInfo = Cloudinary::uploadApi();

        return view('cloudinary.upload');
    }

    public function upload(Request $request)
    {
        $uploadedFile = $request->file('file');
        $originalFileName = $uploadedFile->getClientOriginalName(); 
        $tempFilePath = $uploadedFile->storeAs('uploads', $originalFileName);

    
        $newFileName = 'file_' . time();
        $cloudinaryUpload = Cloudinary::upload($uploadedFile->getRealPath(), [
            'folder' => 'uploads',
            'public_id' => pathinfo($newFileName, PATHINFO_FILENAME),
        ]);

        
        unlink(storage_path('app/' . $tempFilePath));

        
        $fileExtension = $uploadedFile->getClientOriginalExtension();
        $fileSize = $uploadedFile->getSize();

        if (in_array($fileExtension, ['jpg', 'jpeg', 'png', 'gif'])) {
            $mediallyType = 'image';
        } elseif (in_array($fileExtension, ['mp4', 'mov', 'avi', 'wmv'])) {
            if ($fileSize <= 100 * 1024 * 1024) {
                $mediallyType = 'video';
            } else {
                $mediallyType = 'large_video';
            }
        } elseif (in_array($fileExtension, ['pdf'])) {
            $mediallyType = 'pdf';
        } elseif (in_array($fileExtension, ['doc', 'docx'])) {
            $mediallyType = 'word';
        } elseif (in_array($fileExtension, ['ppt', 'pptx'])) {
            $mediallyType = 'powerpoint';
        } elseif (in_array($fileExtension, ['csv'])) {
            $mediallyType = 'csv';
        } elseif (in_array($fileExtension, ['xls', 'xlsx'])) {
            $mediallyType = 'excel';
        } else {
            $mediallyType = 'other';
        }

        if ($cloudinaryUpload) {
            
            $media = new Media();
            $media->medially_id = rand(0, 9999999);
            $media->medially_type = $mediallyType;
            $media->file_url = $cloudinaryUpload->getSecurePath();
            $media->file_name = $cloudinaryUpload->getOriginalFileName();
            $media->file_type = $cloudinaryUpload->getFileType();
            $media->size = $cloudinaryUpload->getSize();
            $media->save();

            return redirect()->back()->with('success', 'File uploaded successfully!');
        } else {
            return redirect()->back()->with('error', 'Failed to upload file!');
        }
    }

}
