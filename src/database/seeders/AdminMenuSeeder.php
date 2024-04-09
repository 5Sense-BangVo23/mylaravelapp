<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AdminMenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('admin_menu')->truncate();

        DB::table('admin_menu')->insert([
            array(
                "id" => 1000000,
                "parent_id" => 0,
                "order" => 1000000,
                "title" => "Dashboard",
                "icon" => "fa-bar-chart",
                "uri" => "/",
            ),
            array(
                "id" => 2000000,
                "parent_id" => 0,
                "order" => 2000000,
                "title" => "Admin",
                "icon" => "fa-tasks",
                "uri" => "",
            ),
            array(
                "id" => 3000000,
                "parent_id" => 2000000,
                "order" => 3000000,
                "title" => "Users",
                "icon" => "fa-users",
                "uri" => "auth/users",
            ),
            array(
                "id" => 4000000,
                "parent_id" => 2000000,
                "order" => 4000000,
                "title" => "Roles",
                "icon" => "fa-user",
                "uri" => "auth/roles",
            ),
            array(
                "id" => 5000000,
                "parent_id" => 2000000,
                "order" => 5000000,
                "title" => "Permission",
                "icon" => "fa-ban",
                "uri" => "auth/permissions",
            ),
            array(
                "id" => 6000000,
                "parent_id" => 2000000,
                "order" => 6000000,
                "title" => "Menu",
                "icon" => "fa-bars",
                "uri" => "auth/menu",
            ),
            array(
                "id" => 7000000,
                "parent_id" => 2000000,
                "order" => 7000000,
                "title" => "Operation log",
                "icon" => "fa-history",
                "uri" => "auth/logs",
            ),
            array(
                "id" => 8000000,
                "parent_id" => 0,
                "order" => 8000000,
                "title" => "Media",
                "icon" => "fa-tasks",
                "uri" => "",
            ),
            array(
                "id" => 8000001,
                "parent_id" => 8000000,
                "order" => 8000001,
                "title" => "Cloudinary",
                "icon" => "fa-bars",
                "uri" => "/media/cloudinary",
            ),  
            array(
                "id" => 8100000,
                "parent_id" => 0,
                "order" => 8100000,
                "title" => "Banner",
                "icon" => "fa-tasks",
                "uri" => "",
            ),    
            array(
                "id" => 8100001,
                "parent_id" => 8100000,
                "order" => 8100001,
                "title" => "Create",
                "icon" => "fa-tasks",
                "uri" => "/banner/create",
            ),
            array(
                "id" => 8100002,
                "parent_id" => 8100000,
                "order" => 8100002,
                "title" => "List",
                "icon" => "fa-tasks",
                "uri" => "/banner",
            ),    
            array(
                "id" => 8200000,
                "parent_id" => 0,
                "order" => 8200000,
                "title" => "Post",
                "icon" => "fa-tasks",
                "uri" => "",
            ),    
            array(
                "id" => 8200001,
                "parent_id" => 8200000,
                "order" => 8200001,
                "title" => "Create",
                "icon" => "fa-tasks",
                "uri" => "/post/create",
            ),
            array(
                "id" => 8200002,
                "parent_id" => 8200000,
                "order" => 8200002,
                "title" => "List",
                "icon" => "fa-tasks",
                "uri" => "/post",
            ),      
        ]);
    }
}
