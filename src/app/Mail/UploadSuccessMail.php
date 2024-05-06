<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class UploadSuccessMail extends Mailable
{
    use Queueable, SerializesModels;

   /**
     * Create a new message instance.
     */
    public function __construct(string $subject = '', public ?array $with = [])
    {
        //
        $this->subject = $subject;
        $this->with = $with;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('mail.upload-to-cloudinary-success')
        ->subject($this->subject)
        ->with($this->with);
    }
}
