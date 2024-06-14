<?php

namespace App\Traits;

use App\Models\BlgCategory;
use App\Models\BlgCategoryContent;
use App\Models\BlgContentCategory;
use App\Models\CmnContent;
use App\Models\CmnSearch;
use Illuminate\Support\Facades\Log;

trait SearchTableTrait
{
    use PublishStatusTrait;

    public function insertSearchTable($f)
    {
        $insert_data = [];

        $is_exists = CmnSearch::where('content_id', $f?->model()?->common_id)->exists();
        Log::info($is_exists);
        if ($is_exists) {
           
            $categories = BlgCategory::whereIn('id', $f->categories ?? [])->get();
            $is_post_type = $f->model()->commonData['content_type'] == \ContentClass::searchName('Post')->id;
            $insert_data['title']                = $is_post_type ? $f?->title : $f?->name;
            $insert_data['keyword']              = $f?->keyword;    
            $insert_data['content_type']         = $f->model()->commonData['content_type'];
            $insert_data['content_id']           = $f->model()->common_id;
            $insert_data['content_text']         = $f->model()->text;
            $insert_data['categories_id']        = implode(',', array_column($categories->toArray(), 'id'));
            $insert_data['categories_name']      = implode(',', array_column($categories->toArray(), 'name'));
            $insert_data['status']               = in_array($f->model()->commonData['status'], $this->publishStatus());
        } else {
        
            $c = CmnContent::orderBy('id', 'desc')->first();
            
            $m = \ContentClass::fetchModel($c->content_type)->orderBy('id', 'desc')->first();
            Log::info($c);
            Log::info($m);
           
            $categories = BlgContentCategory::whereIn('content_id', [$c->id])->get();
            Log::info($categories);
        
            $is_post_type = $c->content_type == \ContentClass::searchName('Post')->id;
            $insert_data['title']                = $is_post_type ? $m?->title : $m?->name;
            $insert_data['keyword']              = $f?->keyword;
            $insert_data['content_type']         = $c->content_type;
            $insert_data['content_id']           = $c->id;
            $insert_data['content_text']         = $m->text;
            $insert_data['categories_id']        = implode(',', array_column($categories->toArray(), 'id'));
            $insert_data['categories_name']      = implode(',', array_column($categories->toArray(), 'name'));
            $insert_data['status']               = in_array($c->status, $this->publishStatus());
        }

        CmnSearch::updateOrCreate(
            array( 'content_id' => $f?->model()?->common_id ),
            $insert_data,
        );
    }
}