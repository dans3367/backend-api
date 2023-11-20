<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;

class Role extends BaseModel
{
    use HasFactory;

    const ACTIVE_STATUS = 1;
    
    public function getAllRoleList(){
        
        return $this->findRole(['status'=>self::ACTIVE_STATUS],function($query){
           $results =  $query->pluck('name','id');
           $final_result = [];

           if(!empty($results)){
            foreach($results as $key => $res){
                $final_result[] =[
                    'id'=>$key,
                    'label'=>$res
                ];
            }
           }

           return $final_result;
        });
        
    }

    private function findRole($filter,callable $format){

        $query = self::where($filter);
        
        return $format($query);
    }


}
