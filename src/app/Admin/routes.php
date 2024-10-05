<?php

use App\Admin\Controllers\BannerController;
use App\Admin\Controllers\CategoryController;
use App\Admin\Controllers\GuestController;
use App\Admin\Controllers\KpopAccountController;
use App\Admin\Controllers\PostController;
use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('/banner', BannerController::class);
    $router->resource('/post', PostController::class);
    $router->resource('/category', CategoryController::class);
    $router->resource('/guest', GuestController::class);
    $router->resource('/kpop-account', KpopAccountController::class);
});
