<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SentStatistic extends Model
{
    use HasFactory;
    protected $fillable = [
        'sent', 'bounced', 'smtpapierrors', 'bouncerate', 'spamcomplaints', 'spamcomplaintsrate', 'tracked', 'opens', 'uniqueopens', 'totalclicks', 'uniquelinksclicked', 'withclientrecorded', 'withplatformrecorded', 'withreadtimerecorded', 'withlinktracking', 'withopentracking', 'totaltrackedlinkssent'
    ];
}
