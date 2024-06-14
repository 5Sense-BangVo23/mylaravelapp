<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMediaTableNew extends Migration
{
   /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      
        if (!Schema::hasTable('media')) {
           
            Schema::create('media', function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->morphs('medially');
                $table->text('file_url');
                $table->string('file_name');
                $table->string('file_type')->nullable();
                $table->unsignedBigInteger('size');
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        
        if (Schema::hasTable('media')) {
            Schema::dropIfExists('media');
        }
    }
}
