<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClickEventsRecord extends Model
{
    use HasFactory;
    protected $fillable = [
        'ClickLocation', 'OriginalLink', 'Platform', 'MessageID', 'ReceivedAt', 'Recipient'
    ];
}
