<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */

    /*
        CREATE TABLE `users` (
            `id` bigint unsigned NOT NULL AUTO_INCREMENT,
            `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
            `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
            `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
            `email_verified_at` timestamp NULL DEFAULT NULL,
            `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
            `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
            `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
            `created_at` timestamp NULL DEFAULT NULL,
            `updated_at` timestamp NULL DEFAULT NULL,
            `last_login_at` timestamp NULL DEFAULT NULL,
            `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
            `company_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
            PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
    */

    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('company_id')->default(0);
            $table->bigInteger('created_by')->default(0)->comment('It comes from user pk id from users table');
            $table->string('name',50)->nullable();
            $table->string('email',191)->unique();
            $table->string('password',191);
            $table->string('country',50)->nullable();
            $table->string('phone',50)->nullable();
            $table->tinyInteger('status')->default(1);
            $table->string('profile_photo_path',2048)->nullable();
            $table->string('avatar',255)->nullable();
            $table->string('last_login_ip',191)->nullable();
            $table->timestamp('last_login_at')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
