<?php

use App\Http\Controllers\ArticleDetailController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CloudinaryController;
use App\Http\Controllers\ContentListController;
use App\Http\Controllers\Guest\Auth\LoginController as AuthLoginController;
use App\Http\Controllers\Guest\Auth\RegisterController as AuthRegisterController;
use App\Http\Controllers\Media\Auth\LoginController as AuthCloudinaryController;
use App\Http\Controllers\WelcomeController;
use App\Http\Middleware\AdminMiddleware;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


// Routes for admin authentication
Route::prefix('admin')->group(function () {
   
    // Routes for cloudinary functionality (protected by admin authentication)
    Route::middleware(['admin'])->group(function () {
        // Route to show the upload form
        Route::get('/media/cloudinary', [CloudinaryController::class, 'showUploadForm'])->name('showUploadForm');

        // Route to handle the upload form submission
        Route::post('/media/cloudinary', [CloudinaryController::class, 'upload'])->name('upload');
    });
});

// Routes for guest authentication
Route::middleware(['guest'])->group(function () {
    // Route for login
    Route::get('login', [AuthLoginController::class, 'showLoginForm'])->name('login');
    Route::post('login', [AuthLoginController::class, 'login']);

    // Route for registration
    Route::get('register', [AuthRegisterController::class, 'showRegistrationForm'])->name('register');
    Route::post('register', [AuthRegisterController::class, 'register']);
});

// Route for logout
Route::post('logout', [AuthLoginController::class,'logout'])->name('logout');
Route::get('logout', [AuthLoginController::class,'logout'])->name('logout');

// Default route
Route::get('/', WelcomeController::class)->name('welcome');


Route::group([
    'prefix'        => '/article/detail',
    'as'            => 'article.',
], function () {
    Route::get('/{id}', ArticleDetailController::class)->where('id', '[0-9]+')->name('detail');
});

Route::get('/{content_slug}/{page?}', ContentListController::class)->where('page', '[0-9]+')->name('content.list');
Route::post('/{content_slug}/{page?}', ContentListController::class)->where('page', '[0-9]+')->name('content.list');