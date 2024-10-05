<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;

class KpopDashboardController extends Controller
{
    public function dashboard()
    {
      
            $images = [
                [
                    'url' => 'https://i.pinimg.com/originals/7b/7b/7b/7b1.jpg',
                    'filename' => 'Image 1',
                ],
                [
                    'url' => 'https://i.pinimg.com/originals/7b/7b/7b/7b2.jpg',
                    'filename' => 'Image 2',
                ],
                [
                    'url' => 'https://i.pinimg.com/originals/7b/7b/7b/7b3.jpg',
                    'filename' => 'Image 3',
                ],
                [
                    'url' => 'https://i.pinimg.com/originals/7b/7b/7b/7b4.jpg',
                    'filename' => 'Image 4',
                ],
            ];

            $videos = [
                [
                    'url' => 'https://www.youtube.com/watch?v=9ZjZg5fj9jM',
                    'filename' => 'Video 1',
                ],
                [
                    'url' => 'https://www.youtube.com/watch?v=9ZjZg5fj9jM',
                    'filename' => 'Video 2',
                ],
                [
                    'url' => 'https://www.youtube.com/watch?v=9ZjZg5fj9jM',
                    'filename' => 'Video 3',
                ],
                [
                    'url' => 'https://www.youtube.com/watch?v=9ZjZg5fj9jM',
                    'filename' => 'Video 4',
                ],
            ];
        
        return view('kpop.dashboard', compact('images', 'videos'));
    }

    public function logout()
    {
        Auth::guard('kpop')->logout();
        return redirect()->route('kpop.login')->with('success', 'Successfully logged out.');
    }

}