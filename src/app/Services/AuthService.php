<?php

namespace App\Services;

use Illuminate\Support\Facades\Auth;

class AuthService{
    public function login($credentials)
    {
        if (Auth::attempt($credentials)) {
            return true; // or return the authenticated user
        }
        return false;
    }
}