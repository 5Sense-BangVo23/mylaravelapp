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
        Schema::create('google_drive_files', function (Blueprint $table) {
            $table->id();
            $table->string('file_name'); 
            $table->string('google_drive_id');
            $table->string('mime_type');
            $table->string('size')->nullable(); 
            $table->string('google_drive_url')->nullable(); 
            $table->string('parent_folder_id')->nullable(); 
            $table->string('url_type')->nullable();
            
            $table->unsignedBigInteger('kpop_group_id')->nullable();
            $table->foreign('kpop_group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('google_drive_files');
    }
};
