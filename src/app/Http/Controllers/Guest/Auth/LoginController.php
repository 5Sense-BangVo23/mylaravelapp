<?php

namespace App\Http\Controllers\Guest\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Session;
class LoginController extends Controller
{
    public function showLoginForm()
    {
        return view('guest.auth.login');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('username_or_email', 'password');
        
        // Attempt to authenticate using email
        if (Auth::attempt(['email' => $credentials['username_or_email'], 'password' => $credentials['password']])) {
            return redirect()->intended('/');
        }
    
        // Attempt to authenticate using username
        if (Auth::attempt(['name' => $credentials['username_or_email'], 'password' => $credentials['password']])) {
            return redirect()->intended('/');
        }   
        return back()->withErrors(['username_or_email' => 'Invalid credentials']);
    }
    
    public function logout(Request $request){
        Auth::logout();
        $guestId = $request->input('guest_id');
        if($guestId){
            session(['guest_id' => $guestId]);
            return redirect()->route('welcome');
        }
        return redirect()->route('account.login');
    }
}
