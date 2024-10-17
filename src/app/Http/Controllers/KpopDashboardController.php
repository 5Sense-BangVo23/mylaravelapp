<?php

namespace App\Http\Controllers;

use App\Services\GoogleDriveService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KpopDashboardController extends Controller
{

    public function dashboard()
    {
        return view('kpop.dashboard');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('kpop.login')->with('success', 'You have been logged out successfully.');
    }
}
