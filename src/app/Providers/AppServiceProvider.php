<?php

namespace App\Providers;

use App\Services\CloudinaryUploadHandler;
use App\Services\LocalUploadHandler;
use App\Services\UploadHandlerInterface;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind(UploadHandlerInterface::class, function ($app) {
            if (config('filesystems.default') == 'cloudinary') {
                return new CloudinaryUploadHandler();
            } else {
                return new LocalUploadHandler();
            }
        });


        $this->app->bind('UploadService', CloudinaryUploadHandler::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
