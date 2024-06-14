<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ContentListController extends Controller
{
    public function __invoke(string $content_slug)
    {
        
        $content_type = \ContentClass::searchSlug($content_slug);
        $content_name = $content_type->name;
        $list = \ContentClass::fetchModel($content_type->id)->whereNotNull('common_id')->get();
    
        return view('template.content.list',compact('content_type','list'));
 
    }
}
