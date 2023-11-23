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
        Schema::create('click_events_records', function (Blueprint $table) {
            $table->id();
            $table->string('ClickLocation', 255);
            $table->string('OriginalLink', 255);
            $table->string('Platform', 255);
            $table->string('MessageID', 255);
            $table->timestamp('ReceivedAt');
            $table->string('Recipient', 255);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('click_events_records');
    }
};
