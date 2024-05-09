<?php

use App\Http\Controllers\KPop\Auth\KPopLoginController;
use App\Http\Controllers\KPop\Auth\KPopRegisterController;
use App\Http\Controllers\KPop\Platform\DashboardController;
use Illuminate\Support\Facades\Route;


Route::middleware(['kpop-admin'])->group(function () {

    // dd('This is the admin route');
    // Login
    Route::get('/kpop/login', [KPopLoginController::class, 'showLoginForm'])->name('kpop.login');
    Route::post('/kpop/login', [KPopLoginController::class, 'login'])->name('kpop.login.submit');
   
    // Routes for KPop idols registration
    Route::get('/kpop/register', [KPopRegisterController::class, 'showRegistrationForm'])->name('kpop.register');
    Route::post('/kpop/register', [KPopRegisterController::class, 'register'])->name('kpop.register.submit');

    Route::get('/kpop/dashboard',[DashboardController::class,'show'])->name('kpop.dashboard');
});

