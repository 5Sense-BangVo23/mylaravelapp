<?php

namespace App\Listeners;

use App\Events\FileUploaded;
use App\Mail\UploadFailureMail;
use App\Mail\UploadSuccessMail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class SendUploadFailureNotification
{
    /**
     * Handle the event.
     */
   public function handle(FileUploaded $event) {
    if (!$event->isSuccess) {
        $subject = 'Upload Failure';
        $failureMessage = $event->message; 
        $media = $event->media;

        $mail_cloudinary = env('CLOUDINARY_EMAIL');
        Mail::to($mail_cloudinary)->send(new UploadFailureMail($subject, [
            'failureMessage' => $failureMessage,
            'media' => $media,
        ]));
    }
    }
    
    
}
