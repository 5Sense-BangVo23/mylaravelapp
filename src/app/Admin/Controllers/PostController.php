<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Guest\Auth\LoginController;
use App\Models\BlgCategory;
use App\Models\BlgPost;
use App\Models\BlgPostClass;
use App\Models\CmnContent;
use App\Models\MstContentClass;
use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Traits\SearchTableTrait;
class PostController extends AdminController
{

    protected $title = 'Post';
    use SearchTableTrait;

    public function grid(){
      

        $guestId = request()->session()->get('guest_id');
        // dd($guestId);
        if ($guestId !== null || $guestId !== 999999999) {
            $grid = new Grid(new BlgPost());
            $grid->column('id',__('admin.item.id'))->hide();
            $grid->column('title',__('admin.item.title'));
            $grid->column('content_text',__('admin.item.content_text'));
            $grid->column('author.id',__('admin.item.user_id'));
            $grid->column('created_at',__('admin.item.created_at'));
            $grid->column('updated_at',__('admin.item.updated_at'));
            $grid->column('common_id',__('admin.item.common_id'))->hide();
            $grid->categories(__('admin.item.categories'))->display(function ($categories) {
                $categories = array_map(fn ($category) => "{$category['id']}:{$category['name']}", $categories ?? []);
                return implode(' | ', $categories);
            });
            $grid->filter(function ($filter) {
                $filter->disableIdFilter();
                $filter->like('title', __('admin.item.title'));
                $filter->like('content_text', __('admin.item.content_text'));
                
                $filter->between('created_at', __('admin.item.created_at'))->datetime();
                  
    
                $categories = BlgCategory::where('content_type', 1)->pluck('name', 'id');
                $filter->where(function ($query) {
                    if ($this->getValue()) {
                        $query->whereHas('categories', function ($query) {
                            $query->whereIn('blg_categories.id', $this->getValue());
                        });
                    }
                }, __('admin.item.select_multiple_categories'))->multipleSelect($categories);
            });
        }else{
            $grid = new Grid(new BlgPost());
            $grid->column('id',__('admin.item.id'))->hide();
            $grid->column('title',__('admin.item.title'));
            $grid->column('content_text',__('admin.item.content_text'));
            $grid->column('author.id',__('admin.item.user_id'));
            $grid->column('created_at',__('admin.item.created_at'));
            $grid->column('updated_at',__('admin.item.updated_at'));
            $grid->column('common_id',__('admin.item.common_id'))->hide();
            $grid->categories(__('admin.item.categories'))->display(function ($categories) {
                $categories = array_map(fn ($category) => "{$category['id']}:{$category['name']}", $categories ?? []);
                return implode(' | ', $categories);
            });
            $grid->filter(function ($filter) {
                $filter->disableIdFilter();
                $filter->like('title', __('admin.item.title'));
                $filter->like('content_text', __('admin.item.content_text'));
                
                $filter->between('created_at', __('admin.item.created_at'))->datetime();
                  
    
                $categories = BlgCategory::where('content_type', 1)->pluck('name', 'id');
                $filter->where(function ($query) {
                    if ($this->getValue()) {
                        $query->whereHas('categories', function ($query) {
                            $query->whereIn('blg_categories.id', $this->getValue());
                        });
                    }
                }, __('admin.item.select_multiple_categories'))->multipleSelect($categories);
            });
      
       
        }

        
         
    
        return $grid;
    }
    public function form(){
       
        $form = new Form(new BlgPost());
        $guestId = request()->session()->get('guest_id');
        if($guestId !== null){
            $form = new Form(new BlgPost());
            $content_type = MstContentClass::where('name', $this->title)->first()->id;
        

            $form->hidden('common_id', __('admin.item.common_id'))->default(0);
            $form->text('title', __('admin.item.title'));
            $form->textarea('content_text', __('admin.item.content_text'));
            
            $currentGuestUserId = User::find($guestId)->id ?? null ;
            
            // get current user
            $form->hidden('user_id')->value($currentGuestUserId);
            $form->display('created_at');
            $form->display('updated_at');


            $code = BlgCategory::where('content_type', $content_type)->pluck('id', 'id')->toArray();
            $name = BlgCategory::where('content_type', $content_type)->pluck('name', 'id')->toArray();
            foreach ($code as $k => &$v) {
                $v = $v . " : " . $name[$k];
            }
            $form->multipleSelect('categories', __('admin.item.categories'))->options($code);
            $form->hidden('commonData.content_type', __('admin.item.content_type'))->default($content_type);
            $form->datetime('commonData.publish_started_at', __('admin.item.publish_started_at'))->default(date('Y/m/d H:i:s'));
            $form->saved(function (Form $form) {
                $form->model()->commonData()->touch();    
                $this->insertSearchTable($form);
            });

            return $form;
        }else{
            $form = new Form(new BlgPost());
            $content_type = MstContentClass::where('name', $this->title)->first()->id;
        

            $form->hidden('common_id', __('admin.item.common_id'))->default(0);
            $form->text('title', __('admin.item.title'));
            $form->textarea('content_text', __('admin.item.content_text'));
            
            $currentGuestUserId = User::find($guestId)->id;
            
            // get current user
            $form->hidden('user_id')->value($currentGuestUserId);
            $form->display('created_at');
            $form->display('updated_at');


            $code = BlgCategory::where('content_type', $content_type)->pluck('id', 'id')->toArray();
            $name = BlgCategory::where('content_type', $content_type)->pluck('name', 'id')->toArray();
            foreach ($code as $k => &$v) {
                $v = $v . " : " . $name[$k];
            }
            $form->multipleSelect('categories', __('admin.item.categories'))->options($code);
            $form->hidden('commonData.content_type', __('admin.item.content_type'))->default($content_type);
            $form->datetime('commonData.publish_started_at', __('admin.item.publish_started_at'))->default(date('Y/m/d H:i:s'));
            $form->saved(function (Form $form) {
                $form->model()->commonData()->touch();    
                $this->insertSearchTable($form);
            });

            return $form;
        }
        
       
    }
}