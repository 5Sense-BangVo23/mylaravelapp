<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContentListController extends Controller
{
    public function __invoke(string $content_slug)
    {
        $content_type = \ContentClass::searchSlug($content_slug);
        $list = \ContentClass::fetchModel($content_type->id)->whereNotNull('common_id')->get();
       
        $html = "<h1>Content List A</h1>";

        foreach ($list as $post) {
            
            $html .= "<p>{$post->title} A</p>";
        }
        
        // $endpoint = app('WebRoute')->getCurrentPageInfo()['full_url'];  // Way 1
        $endpoint = \WebRoute::getCurrentPageInfo()['full_url']; //  Way 2
        $html = app('WebExtractor')->extractHtmlFromUrl($endpoint);
        dd($html);

        // dd($list);
        return view('template.content.list',compact('content_type','list','html'));
    }
}
