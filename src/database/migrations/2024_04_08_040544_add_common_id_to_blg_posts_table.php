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
        Schema::table('blg_posts', function (Blueprint $table) {
            $table->unsignedBigInteger('common_id')->nullable()->comment("The foreign key, cmn_contents");
            $table->foreign('common_id')->references('id')->on('cmn_contents')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('blg_posts', function (Blueprint $table) {
            $table->dropForeign(['common_id']);
            $table->dropColumn('common_id');
        });
    }
};
