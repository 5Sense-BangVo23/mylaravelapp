<?php

namespace App\Http\Controllers\Guest\Auth;

use App\Http\Controllers\Controller;
use App\Mail\LoginNotificationMail;
use App\Mail\LogoutNotificationMail;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class LoginController extends Controller
{
    public function showLoginForm()
    {
        return view('guest.auth.login');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('username_or_email', 'password');
        
        // Attempt to authenticate using email or username
        if (Auth::attempt(['email' => $credentials['username_or_email'], 'password' => $credentials['password']]) ||
            Auth::attempt(['name' => $credentials['username_or_email'], 'password' => $credentials['password']])) {
            
            $user = Auth::user();
            $loginTime = Carbon::now()->isoFormat('dddd, D MMMM YYYY, h:mm A');
            
            Mail::to($user->email)->send(new LoginNotificationMail($user, $loginTime));
            return redirect()->intended('/');
        }

        return back()->withErrors(['username_or_email' => 'Invalid credentials']);
    }
    
    public function logout(Request $request)
    {
        $user = Auth::user();
        
        if ($user) {
            $logoutTime = Carbon::now()->isoFormat('dddd, D MMMM YYYY, h:mm A');
            Mail::to($user->email)->send(new LogoutNotificationMail($user, $logoutTime));
        }

        Auth::logout();
        return redirect()->route('account.login');
    }
}
