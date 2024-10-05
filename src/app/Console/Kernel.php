<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use App\Console\Commands\AutoSendEmailLogoutSchedule;
use App\Mail\LogoutNotificationMail;
use App\Models\User;
use Illuminate\Support\Facades\Mail;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        AutoSendEmailLogoutSchedule::class,
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // Delete users where email_verified_at is null (example)
        $schedule->call(function () {
            User::whereNull('email_verified_at')->delete();
        })->everyFiveMinutes();

        // Log out users with expired tokens and send notification
        $schedule->call(function () {
            User::where('token_expires_at', '<=', now())
                ->whereNotNull('token_expires_at')
                ->get()
                ->each(function ($user) {
                    // Log out the user
                    $user->logout(); // Implement this method in User model or controller
                    $logoutTime = now()->isoFormat('dddd, D MMMM YYYY, h:mm A');
                    // Send email notification
                    Mail::to($user->email)->send(new LogoutNotificationMail($user, $logoutTime));
                });
        })->everyMinute(); // Adjust schedule as per your requirement
    }


    /**
     * Register the Closure based commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
