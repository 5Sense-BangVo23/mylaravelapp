<?php

namespace App\Listeners;

use App\Events\FileUploaded;
use App\Mail\UploadSuccessMail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class SendUploadSuccessNotification
{
   
    /**
     * Handle the event.
     */
    public function handle(FileUploaded $event): void
    {
        $subject = 'Upload Success';
        $uploadMessage = $event->message; 
        $media = $event->media;
        
        $mail_cloudinary = env('CLOUDINARY_EMAIL');
        Mail::to($mail_cloudinary)->send(new UploadSuccessMail($subject, [
            'uploadMessage' => $uploadMessage,
            'media' => $media,
        ]));
    }
}
