<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KpopGroupsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('kpop_groups')->insert([
            [
                'name' => 'Blackpink',
                'debut_date' => '2016-08-08',
                'agency' => 'YG Entertainment',
                'description' => 'Một trong những nhóm nhạc nữ nổi tiếng nhất hiện nay.',
                'genre' => 'Pop',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Red Velvet',
                'debut_date' => '2014-08-01',
                'agency' => 'SM Entertainment',
                'description' => 'Nhóm nhạc nữ với phong cách đa dạng.',
                'genre' => 'Pop',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Twice',
                'debut_date' => '2015-10-20',
                'agency' => 'JYP Entertainment',
                'description' => 'Nhóm nhạc nữ với nhiều ca khúc hit.',
                'genre' => 'Pop',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}


// php artisan db:seed --class=KpopGroupsSeeder
