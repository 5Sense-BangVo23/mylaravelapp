<?php

namespace App\Admin\Controllers;

use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;

class GuestController extends AdminController
{
    protected $title = 'Guest';

    protected function grid()
    {
        $grid = new Grid(new User());

        $grid->actions(function ($actions) {
            $actions->disableView();
            $actions->disableDelete();
        });

        $grid->disableCreateButton();

            //id, name, email, email_verified_at, password, remember_token, created_at, updated_at
        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('email', __('Email'));
        $grid->column('email_verified_at', __('Email Verified At'));
        $grid->column('password', __('Password'))->display(function () {
            return '********';
        });
        $grid->column('remember_password', __('Remember Password'));
        $grid->column('remember_token',__('Remember Token'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));
        return $grid;
    }

    protected function form()
    {
        $form = new Form(new User());

        \Encore\Admin\Admin::script("
          
        ");
    
        

        
        $form->tools(function (Form\Tools $tools) {
            $tools->disableView();
            $tools->disableDelete();
        });



        $form->text('id', __('Id'))->readonly();
        $form->text('name', __('Name'))->readonly();
        $form->text('email', __('Email'))->readonly();
        $form->text('email_verified_at', __('Email Verified At'))->readonly();
        $form->password('password', __('Password'))->help('Check to show password')->default(function() {
            return request()->input('show_password', false) ? request()->input('password', '') : '';
        });
        $form->text('remember_password', __('Remember Password'))->readonly();
        
        $form->text('remember_token',__('Remember Token'))->readonly();
        $form->text('created_at', __('Created at'))->readonly();
        $form->text('updated_at', __('Updated at'))->readonly();

        return $form;
    }
}