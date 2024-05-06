<?php

namespace App\Services;

use App\Events\FileUploaded;
use App\Events\UploadCompleted;
use App\Jobs\ProcessMedia;
use App\Mail\MediaProcessedMail;
use App\Models\Media;
use App\Models\UploadedFile as ObjUploadedFile;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Faker\Core\File;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
class CloudinaryUploadHandler implements UploadHandlerInterface
{
    public function upload($request)
    {
        $uploadedFile = $request->file('file');
       
        switch ($this->getFileType($uploadedFile)) {
            case 'image':
                return $this->uploadImage($uploadedFile);
                break;
            case 'video':
                return $this->uploadVideo($uploadedFile);
                break;
            default:
                return $this->uploadOtherFile($uploadedFile);
        }
    }

    private function getFileType(UploadedFile $uploadedFile)
    {
        if ($this->isImage($uploadedFile)) {
            return 'image';
        } elseif ($this->isVideo($uploadedFile)) {
            return 'video';
        } else {
            return 'other';
        }
    }

    private function isImage(UploadedFile $uploadedFile)
    {
        return Str::startsWith($uploadedFile->getMimeType(), 'image/');
    }

    private function isVideo(UploadedFile $uploadedFile)
    {
        return Str::startsWith($uploadedFile->getMimeType(), 'video/');
    }

    private function uploadImage(UploadedFile $uploadedFile)
    {
        $tempFilePath = $this->storeTempFile($uploadedFile);
        $cloudinaryUpload = $this->uploadToCloudinary($uploadedFile,'image');
        $this->deleteTempFile($tempFilePath);

        if ($cloudinaryUpload) {
            $media = $this->saveMediaInfo($cloudinaryUpload, $uploadedFile);
            $fileUploaded = $this->saveUploadedInfo($cloudinaryUpload);
            if ($media && $fileUploaded) {
                event(new FileUploaded(true, 'Image uploaded successfully', $media));
                return true;
            } else {
                event(new FileUploaded(false, 'Failed to upload image', $media));
               return false;
            }
        }
        return false;
    }

    private function uploadVideo(UploadedFile $uploadedFile)
    {
        $tempFilePath = $this->storeTempFile($uploadedFile);
        $cloudinaryUpload = $this->uploadToCloudinary($uploadedFile,'video');
        $this->deleteTempFile($tempFilePath);

        if ($cloudinaryUpload) {
            $media = $this->saveMediaInfo($cloudinaryUpload, $uploadedFile);
            $fileUploaded = $this->saveUploadedInfo($cloudinaryUpload);
            if ($media && $fileUploaded) {
                event(new FileUploaded(true, 'Video uploaded successfully', $media));
                return true;
            } else {
                event(new FileUploaded(false, 'Failed to upload video', $media));
               return false;
            }
        }
        return false;
    }

    private function uploadOtherFile(UploadedFile $uploadedFile)
    {
        $tempFilePath = $this->storeTempFile($uploadedFile);
        $cloudinaryUpload = $this->uploadToCloudinary($uploadedFile,'other');
        $this->deleteTempFile($tempFilePath);

        if ($cloudinaryUpload) {
            $fileUploaded = $this->saveUploadedInfo($cloudinaryUpload);
            if ($fileUploaded) {
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

    private function uploadToCloudinary(UploadedFile $uploadedFile, $fileType)
    {
        $newFileName = 'file_' . time();
        $publicId = pathinfo($newFileName, PATHINFO_FILENAME);
        $options = [
            'folder' => 'uploads',
            'public_id' => $publicId,
        ];
    
        if ($uploadedFile->getSize() > 2 * 1024 * 1024) {
            $options['resource_type'] = 'raw';
        } else {
            
            switch ($fileType) {
                case 'image':
                    $options['resource_type'] = 'image';
                    break;
                case 'video':
                    $options['resource_type'] = 'video';
                    break;
            }
        }
    
        return Cloudinary::upload($uploadedFile->getRealPath(), $options);
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

    private function saveUploadedInfo($cloudinaryUpload)
    {
        $uploadedF = new ObjUploadedFile();
        $uploadedF->file_name = $cloudinaryUpload->getOriginalFileName();
        $uploadedF->public_id = $cloudinaryUpload->getPublicId();
        $uploadedF->url = $cloudinaryUpload->getSecurePath();
        $uploadedF->save();
        return $uploadedF;
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
