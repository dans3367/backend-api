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
        Schema::create('sent_statistics', function (Blueprint $table) {
            $table->id();
            $table->string('sent');
            $table->string('bounced');
            $table->string('smtpapierrors');
            $table->decimal('bouncerate');
            $table->decimal('spamcomplaints');
            $table->decimal('spamcomplaintsrate');
            $table->string('tracked');
            $table->string('opens');
            $table->string('uniqueopens');
            $table->string('totalclicks');
            $table->string('uniquelinksclicked');
            $table->string('withclientrecorded');
            $table->string('withplatformrecorded');
            $table->string('withreadtimerecorded');
            $table->string('withlinktracking');
            $table->string('withopentracking');
            $table->string('totaltrackedlinkssent');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sent_statistics');
    }
};
