<?php
namespace App\Services;

use App\Models\Media;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;

class CloudinaryUploadHandler implements UploadHandlerInterface
{
    public function upload($request)
    {
        $uploadedFile = $request->file('file');

        $tempFilePath = $this->storeTempFile($uploadedFile);

        $cloudinaryUpload = $this->uploadToCloudinary($uploadedFile);

        $this->deleteTempFile($tempFilePath);

        if ($cloudinaryUpload) {
            $media = $this->saveMediaInfo($cloudinaryUpload, $uploadedFile);
            if ($media) {
                return true;
            }
        }
        return false;
    }

    
    private function storeTempFile(UploadedFile $uploadedFile)
    {
        $originalFileName = $uploadedFile->getClientOriginalName();
        return $uploadedFile->storeAs('uploads', $originalFileName);
    }
    
    private function uploadToCloudinary(UploadedFile $uploadedFile)
    {
        $newFileName = 'file_' . time();
        return Cloudinary::upload($uploadedFile->getRealPath(), [
            'folder' => 'uploads',
            'public_id' => pathinfo($newFileName, PATHINFO_FILENAME),
        ]);
    }
    
    private function deleteTempFile($tempFilePath)
    {
        unlink(storage_path('app/' . $tempFilePath));
    }
    
    private function saveMediaInfo($cloudinaryUpload, UploadedFile $uploadedFile)
    {
        $fileExtension = $uploadedFile->getClientOriginalExtension();
        $fileSize = $uploadedFile->getSize();
        $mediallyType = $this->detectMediaType($fileExtension, $fileSize);
    
        $media = new Media();
        $media->medially_id = rand(0, 9999999);
        $media->medially_type = $mediallyType;
        $media->file_url = $cloudinaryUpload->getSecurePath();
        $media->file_name = $cloudinaryUpload->getOriginalFileName();
        $media->file_type = $cloudinaryUpload->getFileType();
        $media->size = $cloudinaryUpload->getSize();
        $media->save();
    
        return $media;
    }
    
    private function detectMediaType($fileExtension, $fileSize)
    {
        $extensionToType = [
            'jpg' => 'image', 'jpeg' => 'image', 'png' => 'image', 'gif' => 'image',
            'mp4' => 'video', 'mov' => 'video', 'avi' => 'video', 'wmv' => 'video',
            'pdf' => 'pdf',
            'doc' => 'word', 'docx' => 'word',
            'ppt' => 'powerpoint', 'pptx' => 'powerpoint',
            'csv' => 'csv',
            'xls' => 'excel', 'xlsx' => 'excel',
        ];
    
      
        if (array_key_exists($fileExtension, $extensionToType)) {
            $mediaType = $extensionToType[$fileExtension];
            if ($mediaType === 'video' && $fileSize > 100 * 1024 * 1024) {
                $mediaType = 'large_video';
            }
        } else {
            $mediaType = 'other';
        }
    
        return $mediaType;
    }
    

    public function delete($publicId)
    {
        return Cloudinary::destroy($publicId);
    }
}


  