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
        Schema::create('open_records', function (Blueprint $table) {
            $table->id();
            $table->string('RecordType');
            $table->string('MessageID');
            $table->string('Recipient');
            $table->timestamp('ReceivedAt');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('open_records');
    }
};
