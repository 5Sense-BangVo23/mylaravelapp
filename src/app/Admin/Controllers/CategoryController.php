<?php

namespace App\Admin\Controllers;

use App\Models\BlgCategory;
use App\Models\MstContentClass;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;

class CategoryController  extends AdminController
{

    public function grid(){
        $grid = new Grid(new BlgCategory());
        $grid->column('id', 'ID')->sortable();
        $grid->column('name', 'Name');
        
        return $grid;

        
    }
    public function form(){
        $form = new Form(new BlgCategory());
        $form->text('name', 'Name');
        $form->select('content_type', 'Content Type')->options(MstContentClass::all()->pluck('name', 'id'));
        return $form;
    }
}