<?php

namespace App\Http\Controllers\KPop\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KPopLoginController extends Controller
{
    public function showLoginForm()
    {
        return view('kpop.auth.login');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('username_or_email', 'password');
       
        // Attempt to authenticate using email
        if (Auth::attempt(['email' => $credentials['username_or_email'], 'password' => $credentials['password']])) {
           
            return redirect()->route('kpop.dashboard');
        }
    
        // Attempt to authenticate using username
        if (Auth::attempt(['name' => $credentials['username_or_email'], 'password' => $credentials['password']])) {
            return redirect()->route('kpop.dashboard');
        }   
        return back()->withErrors(['username_or_email' => 'Invalid credentials']);
    }
    

}