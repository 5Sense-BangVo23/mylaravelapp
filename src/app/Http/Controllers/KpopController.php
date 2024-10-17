<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class KpopController extends Controller
{
    public function groups()
    {
        return view('kpop.groups');
    }

    public function members()
    {
        return view('kpop.members');
    }

    public function fanclubs()
    {
        return view('kpop.fanclubs');
    }

    public function settings()
    {
        return view('kpop.settings');
    }
}
