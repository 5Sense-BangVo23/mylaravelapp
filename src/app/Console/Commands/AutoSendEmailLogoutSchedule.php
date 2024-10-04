<?php

namespace App\Console\Commands;

use App\Mail\AutoSendMail;
use App\Models\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class AutoSendEmailLogoutSchedule extends Command
{
    protected $signature = 'mail:auto.auto-send-mail';
    protected $description = 'Send auto send mail to users';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        // Logic to determine which users to send emails to
        $users = User::where('is_send_mail', true)->get();

        foreach ($users as $user) {
            // Send the email
            Mail::to($user->email)->send(new AutoSendMail($user->name));

            // Update the user record to indicate the email has been sent
            $user->is_send_mail = false;
            $user->save();
        }

        $this->info('Auto send mail executed successfully.');
    }
}
