<?php

namespace App\Providers;

use App\Services\CloudinaryUploadHandler;
use App\Services\ContentClassHandler;
use App\Services\ContentClassHandlerInterface;
use App\Services\ContentHandler;
use App\Services\ContentHandlerInterface;
use App\Services\LocalUploadHandler;
use App\Services\PostClassHandler;
use App\Services\UploadHandlerInterface;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        // $this->app->bind(UploadHandlerInterface::class, function ($app) {
        //     if (config('filesystems.default') == 'cloudinary') {
        //         return new CloudinaryUploadHandler();
        //     } else {
        //         return new LocalUploadHandler();
        //     }
        // });
        // $this->app->bind(ContentHandlerInterface::class, function ($app) {
        //     $contentHandler = new ContentHandler();
        //     $contentHandler->setContentType($app->config('content.type'));
        //     $contentHandler->setContentModel($app->config('content.model'));
        //     return $contentHandler;
        // });
        // $this->app->bind(ContentClassHandlerInterface::class, function ($app) {
        //     $contentClassHandler = new ContentClassHandler();
        //     return $contentClassHandler;
        // });


        $this->app->bind('UploadService', CloudinaryUploadHandler::class);
        $this->app->bind('ContentService', ContentHandler::class);
        $this->app->bind('ContentClassService', ContentClassHandler::class);
        $this->app->bind('PostClassService', PostClassHandler::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
