<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KpopAuthController extends Controller
{
    public function loginForm()
    {
        if(Auth::guard('kpop')->user()){
            return redirect()->route('kpop.dashboard');
        }
        return view('auth.kpop.login');
    }
    public function postLogin()
    {
        $credentials = request()->only('email', 'password');
        if (Auth::guard('kpop')->attempt($credentials)) {
            return redirect()->route('kpop.dashboard');
        }
        return redirect()->back()->with('error', 'Invalid credentials');
       
    }

}
