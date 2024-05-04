<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
   /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Kiểm tra xem bảng blg_comments đã tồn tại chưa
        if (!Schema::hasTable('blg_comments')) {
            // Nếu chưa tồn tại, thì mới thực hiện tạo bảng
            Schema::create('blg_comments', function (Blueprint $table) {
                $table->id();
                $table->text('comment_text');
                $table->timestamp('date_commented');
                $table->unsignedBigInteger('post_id');
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
        // Xóa bảng blg_comments chỉ khi nó tồn tại
        if (Schema::hasTable('blg_comments')) {
            Schema::dropIfExists('blg_comments');
        }
    }
};
