<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('blg_posts', function (Blueprint $table) {
            if (!Schema::hasColumn('blg_posts', 'id')) {
                $table->bigIncrements('id');
            }
            if (!Schema::hasColumn('blg_posts', 'post_class_id')) {
                $table->bigInteger('post_class_id')->unsigned()->nullable();
            }
            if (!Schema::hasColumn('blg_posts', 'created_at')) {
                $table->timestamp('created_at')->nullable();
            }
            if (!Schema::hasColumn('blg_posts', 'updated_at')) {
                $table->timestamp('updated_at')->nullable();
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('blg_posts', function (Blueprint $table) {
            $table->dropColumn(['id', 'post_class_id', 'created_at', 'updated_at']);
        });
    }
};
