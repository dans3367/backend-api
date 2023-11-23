<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OpenRecord extends Model
{
    use HasFactory;

    protected $fillable = [
        'RecordType', 'MessageID', 'Recipient', 'ReceivedAt'
    ];
}
