<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class LoginNotificationMail extends Mailable
{
    use Queueable, SerializesModels;

    public $user;
    public $loginTime;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($user,$loginTime)
    {
        $this->user = $user;
        $this->loginTime = $loginTime;
    }
    
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Login Notification')
                    ->view('mail.login.login-notification-mail')
                    ->with([
                        'name' => $this->user->name,
                        'email' => $this->user->email,
                        'loginTime' => $this->loginTime,
                    ]);
    }
}
