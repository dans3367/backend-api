<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        if (!Schema::hasTable('stores')) {
            Schema::create('stores', function (Blueprint $table) {
                $table->id();
                $table->char('uuid', 36)->unique();
                $table->string('storename', 255);
                $table->string('address_1', 255)->nullable();
                $table->string('address_2', 255)->nullable();
                $table->string('city', 50)->nullable();
                $table->string('state', 50)->nullable();
                $table->string('country', 50)->nullable();
                $table->string('zipcode', 10)->nullable();
                $table->string('phone', 20)->nullable();
                $table->string('email', 255)->nullable();
                $table->unsignedBigInteger('parent_company')->nullable();
                $table->unsignedBigInteger('parent_manager')->nullable();
                $table->timestamps();
            });
        }

    }

    public function down()
    {
        Schema::dropIfExists('stores');
    }
};
