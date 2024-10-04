<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class LogoutNotificationMail extends Mailable
{
    use Queueable, SerializesModels;

    use Queueable, SerializesModels;

    public $user;
    public $logoutTime;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($user,$logoutTime)
    {
        $this->user = $user;
        $this->logoutTime = $logoutTime;
    }
    
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Logout Notification')
                    ->view('mail.logout.logout-notification-mail')
                    ->with([
                        'name' => $this->user->name,
                        'email' => $this->user->email,
                        'logoutTime' => $this->logoutTime,
                    ]);
    }
}
