<?php

namespace App\Http\Controllers\KPop\Auth;

use App\Http\Controllers\Controller;
use App\Models\KPopAdmin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class KPopRegisterController extends Controller
{
    public function showRegistrationForm()
    {
        return view('kpop.auth.register');
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:kpop_admins',
            'password' => 'required|string|min:8',
        ]);

        KPopAdmin::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'remember_password' => $request->password,
        ]);

        return redirect()->route('kpop.login')->with('success', 'Registration successful! Please log in.');
    }
    
}