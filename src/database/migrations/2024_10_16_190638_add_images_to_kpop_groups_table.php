<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('kpop_groups', function (Blueprint $table) {
            if (!Schema::hasColumn('kpop_groups', 'thumbnails')) {
                $table->json('thumbnails')->nullable()->after('agency'); 
            }
            if (!Schema::hasColumn('kpop_groups', 'cover_image')) {
                $table->string('cover_image')->nullable()->after('thumbnails'); 
            }
            if (!Schema::hasColumn('kpop_groups', 'profile_image')) {
                $table->string('profile_image')->nullable()->after('cover_image');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('kpop_groups', function (Blueprint $table) {
            $table->dropColumn(['thumbnail', 'cover_image', 'profile_image']);
        });
    }
};
