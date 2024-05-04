<?php

namespace App\Http\Controllers;

use App\Models\CmnBanner;
use App\Models\Media;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    //
    public function __invoke(Request $request)
    {    
        $banners = CmnBanner::where('status', 1)->get();
        $medias = Media::where('file_type', 'image')->take(3)->get();
        return  view('template.welcome', 
                compact([
                        'banners',
                        'medias'
                    ]));
            
    }
}
