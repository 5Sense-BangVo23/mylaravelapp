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
                "id" => 1,
                "parent_id" => 0,
                "order" => 1,
                "title" => "Dashboard",
                "icon" => "fa-bar-chart",
                "uri" => "/",
            ),
            array(
                "id" => 2,
                "parent_id" => 0,
                "order" => 2,
                "title" => "Admin",
                "icon" => "fa-tasks",
                "uri" => "",
            ),
            array(
                "id" => 3,
                "parent_id" => 2,
                "order" => 3,
                "title" => "Users",
                "icon" => "fa-users",
                "uri" => "auth/users",
            ),
            array(
                "id" => 4,
                "parent_id" => 2,
                "order" => 4,
                "title" => "Roles",
                "icon" => "fa-user",
                "uri" => "auth/roles",
            ),
            array(
                "id" => 5,
                "parent_id" => 2,
                "order" => 5,
                "title" => "Permission",
                "icon" => "fa-ban",
                "uri" => "auth/permissions",
            ),
            array(
                "id" => 6,
                "parent_id" => 2,
                "order" => 6,
                "title" => "Menu",
                "icon" => "fa-bars",
                "uri" => "auth/menu",
            ),
            array(
                "id" => 7,
                "parent_id" => 2,
                "order" => 7,
                "title" => "Operation log",
                "icon" => "fa-history",
                "uri" => "auth/logs",
            ),
            array(
                "id" => 8,
                "parent_id" => 0,
                "order" => 8,
                "title" => "Example",
                "icon" => "fa-tasks",
                "uri" => "",
            ),

        
        ]);
    }
}
