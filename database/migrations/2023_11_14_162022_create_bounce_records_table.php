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
        Schema::create('bounce_records', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('bouncedID');
            $table->string('Type');
            $table->unsignedTinyInteger('TypeCode');
            $table->string('MessageID');
            $table->text('Description');
            $table->text('Details');
            $table->string('Email');
            $table->string('From');
            $table->timestamp('BouncedAt');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bounce_records');
    }
};
