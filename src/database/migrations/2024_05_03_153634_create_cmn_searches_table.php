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
        Schema::create('cmn_searches', function (Blueprint $table) {
            $table->id();
            $table->boolean('content_type')->nullable()->default(0);
            $table->unsignedBigInteger('content_id')->nullable();
            $table->text('content_text')->nullable();
            $table->text('keyword')->nullable();
            $table->text('exclusion_keyword')->nullable();
            $table->text('categories_id')->nullable();
            $table->text('categories_name')->nullable();
            $table->boolean('status')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cmn_searches');
    }
};
