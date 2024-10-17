<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\KpopFanClub; 

class KpopFanClubsSeeder extends Seeder
{
    public function run()
    {
        KpopFanClub::create([
            'name' => 'Blackpink Vietnam',
            'group_id' => 1,
        ]);

        KpopFanClub::create([
            'name' => 'Red Velvet Fans',
            'group_id' => 2,
        ]);

        KpopFanClub::create([
            'name' => 'Twice Lovers',
            'group_id' => 3,
        ]);
    }
}
