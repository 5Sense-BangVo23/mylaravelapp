<?php

namespace App\Http\Controllers\Guest\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    private $recaptcha_site_key;
    private $recaptcha_secret_key;

    public function __construct()
    {
        $this->recaptcha_site_key = config('googlerecaptchav2.site_key');
        $this->recaptcha_secret_key = config('googlerecaptchav2.secret_key');
    }
    public function showRegistrationForm()
    {
        $site_key = $this->recaptcha_site_key;
        $setcret_key = $this->recaptcha_secret_key;
        return view('guest.auth.register', compact('site_key', 'setcret_key'));
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return redirect()->route('login')->with('success', 'Registration successful! Please log in.');
    }
}
