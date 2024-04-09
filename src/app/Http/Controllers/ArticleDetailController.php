<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ArticleDetailController extends Controller
{
    public function __invoke(Request $request)
    {
        return view('template.article-detail');
    }
}
