<?php

namespace App\Admin\Controllers;

use App\Models\CmnBanner;
use App\Services\LocalUploadHandler;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;

class BannerController extends AdminController
{

    public function grid(){
        $grid = new Grid(new CmnBanner());
        $grid->column('id', 'ID')->sortable();
        $grid->column('title', 'Title')->sortable();
        $grid->column('image', 'Image')->image();
        $grid->column('link', 'Link')->sortable();
        $grid->column('position', 'Position')->sortable();
        $grid->column('status', 'Status')->switch();

        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        $grid->filter(function ($filter) {
            $filter->like('title', 'Title');
            $filter->like('link', 'Link');
            $filter->equal('status', 'Status')->select([1 => 'Active', 0 => 'Inactive']);
        });
        
        return $grid;
    }

    public function form(){
        $form = new Form(new CmnBanner());

        // ------ CSS
        \Encore\Admin\Admin::style("");
        // ------ Javascript
        \Encore\Admin\Admin::script("
            
        ");
    


        $form->text('title', 'Title')->rules('required');
        $form->image('image', 'Image')
            ->disk('public')
            ->move(config('app.banners'), function () use ($form) {
                $imgName = null;
                $currentDateTime = now()->format('Y_m_d_H_i_s');
                $imgName = "banner_images_" . $currentDateTime . '.png';
                return $imgName;
            })
            ->required(true);
        $form->text('link', 'Link');
        $form->number('position', 'Position')->rules('required');
        $form->switch('status', 'Status')->default(1);
        // $form->saving(function (Form $form) {
        //     if ($form->image) {
        //         $form->image = $form->image->store('banners', 'public');
        //     }
        // });
        $form->saved(function (Form $form) {
          
        });
        return $form;
    }

  
   
}
