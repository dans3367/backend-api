<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class BounceRecord extends Model
{
    use HasFactory;
    protected $fillable = [
        'bouncedID', 'Type', 'TypeCode', 'MessageID', 'Description', 'Details', 'Email', 'From', 'BouncedAt'
    ];

}
