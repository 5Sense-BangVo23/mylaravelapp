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
        Schema::create('blg_categories', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->unsignedInteger('content_type');
            $table->integer('order')->default(0);
            $table->timestamps();
        });

        Schema::create('blg_content_categories', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('content_id');
            $table->unsignedBigInteger('category_id');

            $table->foreign('content_id')->references('id')->on('cmn_contents')->onDelete('cascade');
            $table->foreign('category_id')->references('id')->on('blg_categories')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('blg_categories');
    }
};
