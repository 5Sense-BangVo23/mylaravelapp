<?php

namespace App\Listeners;

use App\Events\GoogleSheetEvent;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class GoogleSheetListener
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(GoogleSheetEvent $event): void
    {
        //
    }
}
