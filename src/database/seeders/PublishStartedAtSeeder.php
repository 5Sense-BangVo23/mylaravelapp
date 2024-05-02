<?php

namespace Database\Seeders;

use App\Models\CmnContent;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PublishStartedAtSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        CmnContent::all()->each(function ($record) {
            $record->update(['publish_started_at' => now()]);
        });
    }

    // php artisan db:seed --class=PublishStartedAtSeeder
}
