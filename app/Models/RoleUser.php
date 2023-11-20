<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;

class RoleUser extends BaseModel
{
    use HasFactory;

    protected $fillable = ['role_id','user_id'];

    public function insertData($inputData){
        return self::create($inputData);
    }
}
