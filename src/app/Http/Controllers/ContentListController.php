<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContentListController extends Controller
{
    public function __invoke(string $content_slug)
    {
        $content_type = \ContentClass::searchSlug($content_slug);
        $list = \ContentClass::fetchModel($content_type->id)->get();
        // dd($list);
        return view('template.content.list',compact('content_type','list'));
    }
}
