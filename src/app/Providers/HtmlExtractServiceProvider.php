<?php

namespace App\Providers;

use App\Services\HtmlExtractorService;
use Illuminate\Support\ServiceProvider;

class HtmlExtractServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        $this->app->bind('html.extractor', function ($app) {
            return new HtmlExtractorService();
        });
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        //
    }
}
