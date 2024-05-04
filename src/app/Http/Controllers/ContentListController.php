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
       
        $html = '<--! Include --> <br>';
        $html .= '<h1> List '. $content_name  .'</h1>';
        $html .= '<div class="container"> <br></div>';
    
  

        $isSaved =  DB::table('blg_posts')->updateOrInsert([
            'content_text' => $html
        ]);
        
        if($isSaved){
            return view('template.content.list',compact('content_type','list','html'));
        }

        return view('template.content.list',compact('content_type','list'));
        
    }
}
