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
        // Tạo bảng kpop_groups để lưu thông tin về các nhóm K-pop nếu chưa tồn tại
        if (!Schema::hasTable('kpop_groups')) {
            Schema::create('kpop_groups', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->string('name'); // Tên nhóm
                $table->string('debut_date'); // Ngày ra mắt
                $table->string('agency'); // Công ty quản lý nhóm
                $table->text('description')->nullable(); // Mô tả về nhóm
                $table->string('genre')->nullable(); // Thể loại âm nhạc (pop, hip-hop, R&B...)
                $table->timestamps(); // Thời gian tạo và cập nhật
            });
        }

        // Tạo bảng kpop_members nếu chưa tồn tại
        if (!Schema::hasTable('kpop_members')) {
            Schema::create('kpop_members', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('group_id'); // Khóa ngoại liên kết với kpop_groups
                $table->string('name'); // Tên thành viên
                $table->string('role'); // Vai trò trong nhóm (vocal, dancer, rapper...)
                $table->timestamps(); // Thời gian tạo và cập nhật

                // Khóa ngoại
                $table->foreign('group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
            });
        }

        // Tạo bảng kpop_fan_clubs nếu chưa tồn tại
        if (!Schema::hasTable('kpop_fan_clubs')) {
            Schema::create('kpop_fan_clubs', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('group_id'); // Khóa ngoại liên kết với kpop_groups
                $table->string('name'); // Tên fan club
                $table->text('description')->nullable(); // Mô tả về fan club
                $table->timestamps(); // Thời gian tạo và cập nhật

                // Khóa ngoại
                $table->foreign('group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
            });
        }

        // Tạo bảng kpop_songs nếu chưa tồn tại
        if (!Schema::hasTable('kpop_songs')) {
            Schema::create('kpop_songs', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('group_id'); // Khóa ngoại liên kết với kpop_groups
                $table->string('title'); // Tiêu đề bài hát
                $table->string('album')->nullable(); // Album chứa bài hát
                $table->date('release_date')->nullable(); // Ngày phát hành
                $table->text('lyrics')->nullable(); // Lời bài hát
                $table->timestamps(); // Thời gian tạo và cập nhật

                // Khóa ngoại
                $table->foreign('group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
            });
        }

        // Tạo bảng kpop_albums nếu chưa tồn tại
        if (!Schema::hasTable('kpop_albums')) {
            Schema::create('kpop_albums', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('group_id'); // Khóa ngoại liên kết với kpop_groups
                $table->string('title'); // Tiêu đề album
                $table->date('release_date'); // Ngày phát hành
                $table->text('description')->nullable(); // Mô tả về album
                $table->integer('number_of_tracks')->nullable(); // Số lượng bài hát trong album
                $table->timestamps(); // Thời gian tạo và cập nhật

                // Khóa ngoại
                $table->foreign('group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
            });
        }

        // Tạo bảng kpop_photos nếu chưa tồn tại
        if (!Schema::hasTable('kpop_photos')) {
            Schema::create('kpop_photos', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('member_id'); // Khóa ngoại liên kết với kpop_members
                $table->string('url'); // URL của bức ảnh
                $table->text('description')->nullable(); // Mô tả về bức ảnh
                $table->timestamps(); // Thời gian tạo và cập nhật

                // Khóa ngoại
                $table->foreign('member_id')->references('id')->on('kpop_members')->onDelete('cascade');
            });
        }

        // Tạo bảng kpop_videos nếu chưa tồn tại
        if (!Schema::hasTable('kpop_videos')) {
            Schema::create('kpop_videos', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('song_id'); // Khóa ngoại liên kết với kpop_songs
                $table->string('url'); // URL của video
                $table->text('description')->nullable(); // Mô tả về video
                $table->timestamps(); // Thời gian tạo và cập nhật

                // Khóa ngoại
                $table->foreign('song_id')->references('id')->on('kpop_songs')->onDelete('cascade');
            });
        }

        // Tạo bảng kpop_awards nếu chưa tồn tại
        if (!Schema::hasTable('kpop_awards')) {
            Schema::create('kpop_awards', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('group_id'); // Khóa ngoại liên kết với kpop_groups
                $table->string('award_name'); // Tên giải thưởng
                $table->date('date_awarded'); // Ngày nhận giải
                $table->text('description')->nullable(); // Mô tả về giải thưởng
                $table->timestamps(); // Thời gian tạo và cập nhật

                // Khóa ngoại
                $table->foreign('group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
            });
        }

        // Tạo bảng kpop_merchandise nếu chưa tồn tại
        if (!Schema::hasTable('kpop_merchandise')) {
            Schema::create('kpop_merchandise', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('group_id'); // Khóa ngoại liên kết với kpop_groups
                $table->string('item_name'); // Tên sản phẩm
                $table->decimal('price', 8, 2); // Giá sản phẩm
                $table->string('description')->nullable(); // Mô tả về sản phẩm
                $table->timestamps(); // Thời gian tạo và cập nhật

                // Khóa ngoại
                $table->foreign('group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
            });
        }

        // Tạo bảng kpop_collaborations nếu chưa tồn tại
        if (!Schema::hasTable('kpop_collaborations')) {
            Schema::create('kpop_collaborations', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('group_id'); // Khóa ngoại liên kết với nhóm
                $table->string('title'); // Tên hợp tác
                $table->date('date_collaborated'); // Ngày hợp tác
                $table->text('description')->nullable(); // Mô tả về hợp tác
                $table->timestamps(); // Thời gian tạo và cập nhật
            
                // Khóa ngoại
                $table->foreign('group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
            });
        }

        // Tạo bảng kpop_group_collaborations nếu chưa tồn tại
        if (!Schema::hasTable('kpop_group_collaborations')) {
            Schema::create('kpop_group_collaborations', function (Blueprint $table) {
                $table->id(); // Khóa chính
                $table->unsignedBigInteger('collaboration_id'); // Khóa ngoại liên kết với bảng kpop_collaborations
                $table->unsignedBigInteger('group_id'); // Khóa ngoại liên kết với bảng kpop_groups
                $table->timestamps(); // Thời gian tạo và cập nhật
            
                // Khóa ngoại
                $table->foreign('collaboration_id')->references('id')->on('kpop_collaborations')->onDelete('cascade');
                $table->foreign('group_id')->references('id')->on('kpop_groups')->onDelete('cascade');
            });
        }

        if(!Schema::hasTable('kpop_profiles')) {
            Schema::create('kpop_profiles', function (Blueprint $table) {
                $table->id();
                $table->foreignId('member_id')->constrained('kpop_members')->onDelete('cascade');
                $table->string('bio')->nullable(); // Tiểu sử
                $table->string('real_name')->nullable(); // Tên thật
                $table->string('stage_name')->nullable(); // Nghệ danh
                $table->string('position')->nullable(); // Vị trí trong nhóm (leader, main vocal, lead dancer...)
                $table->string('zodiac_sign')->nullable(); // Cung hoàng đạo
                $table->string('blood_type')->nullable(); // Nhóm máu
                $table->string('birthplace')->nullable(); // Nơi sinh
                $table->string('profile_picture')->nullable(); // Ảnh đại diện
                $table->date('birthdate')->nullable(); // Ngày sinh
                $table->string('height')->nullable(); // Chiều cao
                $table->string('weight')->nullable(); // Cân nặng
                $table->string('nationality')->nullable(); // Quốc tịch
                
                $table->timestamps();
            });
        }

        if(!Schema::hasTable('kpop_social_accounts')) {
            Schema::create('kpop_social_accounts', function (Blueprint $table) {
                $table->id();
                $table->foreignId('profile_id')->constrained('kpop_profiles')->onDelete('cascade');
                $table->string('platform')->nullable(); // Nền tảng (Facebook, Instagram, Twitter...)
                $table->string('username')->nullable(); // Tên tài khoản
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Xóa các bảng theo thứ tự từ bảng phụ đến bảng chính
        Schema::dropIfExists('kpop_group_collaborations');
        Schema::dropIfExists('kpop_collaborations');
        Schema::dropIfExists('kpop_merchandise');
        Schema::dropIfExists('kpop_awards');
        Schema::dropIfExists('kpop_videos');
        Schema::dropIfExists('kpop_photos');
        Schema::dropIfExists('kpop_albums');
        Schema::dropIfExists('kpop_songs');
        Schema::dropIfExists('kpop_fan_clubs');
        Schema::dropIfExists('kpop_members');
        Schema::dropIfExists('kpop_groups');
    }
};
// php artisan make:model KpopGroup
// php artisan make:model KpopMember
// php artisan make:model KpopFanClub
// php artisan make:model KpopSong
// php artisan make:model KpopAlbum
// php artisan make:model KpopPhoto
// php artisan make:model KpopVideo
// php artisan make:model KpopAward
// php artisan make:model KpopMerchandise
// php artisan make:model KpopCollaboration
// php artisan make:model KpopGroupCollaboration
