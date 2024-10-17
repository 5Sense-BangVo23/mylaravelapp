<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;
use App\Models\KpopMember; // Giả sử bạn đã tạo model KpopMember

class KpopMembersSeeder extends Seeder
{
    public function run()
    {
        // Blackpink members
        KpopMember::create([
            'group_id' => 1, // ID của nhóm Blackpink
            'name' => 'Jennie',
            'role' => 'Main Rapper'
        ]);

        KpopMember::create([
            'group_id' => 1,
            'name' => 'Lisa',
            'role' => 'Main Dancer'
        ]);

        KpopMember::create([
            'group_id' => 1,
            'name' => 'Rosé',
            'role' => 'Main Vocalist'
        ]);

        KpopMember::create([
            'group_id' => 1,
            'name' => 'Jisoo',
            'role' => 'Visual'
        ]);

        // Red Velvet members
        KpopMember::create([
            'group_id' => 2, // ID của nhóm Red Velvet
            'name' => 'Wendy',
            'role' => 'Main Vocalist'
        ]);

        KpopMember::create([
            'group_id' => 2,
            'name' => 'Irene',
            'role' => 'Leader'
        ]);

        KpopMember::create([
            'group_id' => 2,
            'name' => 'Seulgi',
            'role' => 'Main Dancer'
        ]);

        KpopMember::create([
            'group_id' => 2,
            'name' => 'Joy',
            'role' => 'Lead Vocalist'
        ]);

        KpopMember::create([
            'group_id' => 2,
            'name' => 'Yeri',
            'role' => 'Vocalist'
        ]);

        // TWICE members
        KpopMember::create([
            'group_id' => 3, // ID của nhóm TWICE
            'name' => 'Nayeon',
            'role' => 'Lead Vocalist'
        ]);

        KpopMember::create([
            'group_id' => 3,
            'name' => 'Jeongyeon',
            'role' => 'Lead Vocalist'
        ]);

        KpopMember::create([
            'group_id' => 3,
            'name' => 'Momo',
            'role' => 'Main Dancer'
        ]);

        KpopMember::create([
            'group_id' => 3,
            'name' => 'Sana',
            'role' => 'Vocalist'
        ]);

        KpopMember::create([
            'group_id' => 3,
            'name' => 'Jihyo',
            'role' => 'Main Vocalist'
        ]);

        KpopMember::create([
            'group_id' => 3,
            'name' => 'Dahyun',
            'role' => 'Lead Rapper'
        ]);

        KpopMember::create([
            'group_id' => 3,
            'name' => 'Chaeyoung',
            'role' => 'Main Rapper'
        ]);

        KpopMember::create([
            'group_id' => 3,
            'name' => 'Tzuyu',
            'role' => 'Visual'
        ]);
    }
}

// php artisan db:seed --class=KpopMembersSeeder

