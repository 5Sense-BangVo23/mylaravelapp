<?php

namespace App\Admin\Controllers;

use App\Models\KpopAccount;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Illuminate\Support\Facades\Hash;

class KpopAccountController extends AdminController
{

    protected $title = 'Kpop Account';

    public function grid(){

        $grid = new Grid(new KpopAccount());
        $grid->column('id', __('ID'))->sortable();
        $grid->column('name', __('Name'));
        $grid->column('email',__('Email'));
        return $grid;
    }
    public function form(){
        $form = new Form(new KpopAccount());
        $form->text('name', __('Name'))->rules('required');
        $form->email('email', __('Email'))->rules('required');
        $form->password('password',__('Password'))->rules('required');


        $form->saving(function (Form $form) {
            $kpop_account = KpopAccount::find($form->model()->id);

            if ($kpop_account && ($form->password == $kpop_account->password)) {
                $form->ignore('password');
            } else {
                $form->password = Hash::make($form->password);
            }
        });
        return $form;
    }
}