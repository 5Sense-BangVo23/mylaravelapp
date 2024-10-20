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
        Schema::table('kpop_members', function (Blueprint $table) {
            $table->unsignedBigInteger('kpop_group_id')->nullable()->after('id');
            // Thêm foreign key nếu cần
            $table->foreign('kpop_group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('kpop_members', function (Blueprint $table) {
            $table->dropForeign(['kpop_group_id']);
            $table->dropColumn('kpop_group_id');
        });
    }
};
