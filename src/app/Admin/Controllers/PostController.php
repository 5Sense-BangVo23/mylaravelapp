<?php

namespace App\Admin\Controllers;

use App\Models\BlgPost;
use App\Models\BlgPostClass;
use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Illuminate\Support\Facades\Auth;

class PostController extends AdminController
{

    public function grid(){
        $grid = new Grid(new BlgPost());
        $grid->column('id')->hide();
        $grid->column('title');
        $grid->column('content');
        
        return $grid;
    }
    public function form(){
        $form = new Form(new BlgPost());
        $form->text('title', 'Title');
        $form->textarea('content', 'Content');
        $user = Auth::user();
        $user = User::find(Auth::id());
        $form->hidden('user_id')->value($user->id);
        $form->display('created_at');
        $form->display('updated_at');

        return $form;
    }
}