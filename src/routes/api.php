<?php

use App\Http\Controllers\Api\CloudinaryController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/media/cloudinary/data', [CloudinaryController::class, 'getData'])->name('getData');
Route::get('/media/cloudinary/{id}', [CloudinaryController::class, 'view'])->name('view');
Route::delete('/media/cloudinary/{id}', [CloudinaryController::class, 'remove'])->name('remove');
