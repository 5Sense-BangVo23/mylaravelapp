<?php

namespace App\Http\Controllers\KPop\Platform;

use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function show()
    {
        return view('kpop-platform.dashboard');
    }
}