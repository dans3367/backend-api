<?php

namespace App\Providers;

use App\Utils\Logger;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->singleton('appLog', function ($app) {
            return new \App\Utils\Logger();
        });
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        if (config('logging.enable_query_log')) {
            (new Logger())->enableGlobalQueryLog();
        }
    }
}
