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
        // Kiểm tra xem bảng cmn_contents đã tồn tại chưa
        if (!Schema::hasTable('cmn_contents')) {
            // Nếu chưa tồn tại, thì mới thực hiện tạo bảng
            Schema::create('cmn_contents', function (Blueprint $table) {
                $table->id();
                $table->integer('content_type')->default(0);
                $table->timestamp('publish_started_at')->nullable();
                $table->timestamps();
            });
            
        }

        if (!Schema::hasTable('blg_posts')) {
            // Nếu chưa tồn tại, thì mới thực hiện tạo bảng
            Schema::create('blg_posts', function (Blueprint $table) {
                $table->id();
                $table->string('title');
                $table->text('content');
                $table->unsignedBigInteger('user_id');
                $table->timestamps();
            });
        }

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Xóa bảng cmn_contents chỉ khi nó tồn tại
        if (Schema::hasTable('cmn_contents')) {
            Schema::dropIfExists('cmn_contents');
        }

        if (Schema::hasTable('blg_posts')) {
            Schema::dropIfExists('blg_posts');
        }
    }
};
