<?php

namespace App\Services;

use App\Models\RoleUser;
use Exception;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use App\Utils\ApplicationStatus;
use App\Utils\Filemanager;
use Illuminate\Support\Facades\Hash;

class UserService extends Service
{
    private $user = null;

    public function __construct()
    {
        $this->user = new User;
    }

    public function createUser($inputData)
    {
        $this->response_code = ApplicationStatus::FAILED;
        $this->message = "User created failed";
        
        try{
            
            DB::beginTransaction();
            
            $auth_user = auth()->user();

            $inputData['company_id'] = $auth_user->company_id;
            $inputData['auth_user_id'] = $auth_user->id;

            $userDataInsert['name'] = $inputData['name'];
            $userDataInsert['email'] = $inputData['email'];
            $userDataInsert['country'] = $inputData['country'];
            $userDataInsert['created_by'] = $inputData['auth_user_id'];
            $userDataInsert['company_id'] = $inputData['company_id'];
            $userDataInsert['password'] = Hash::make($inputData['email']);

            // avatar upload
            if(!empty($inputData['avatar'])){
                $file_name = time().rand(0,10000).".".$inputData['avatar']->getClientOriginalExtension();
                Filemanager::uploadFile(Filemanager::USER_AVATAR_DIR,$file_name,$inputData['avatar']);
                $userDataInsert['avatar'] = $file_name;
            }

            // Insert user
            $user = $this->user->add($userDataInsert);

            $userRoleInsertData['role_id'] = $inputData['role_id'];
            $userRoleInsertData['user_id'] = $user['id'];

            // Assign Role to user
            (new RoleUser())->insertData($userRoleInsertData);

            DB::commit();

            $this->response_code = ApplicationStatus::SUCCESS;
            $this->message = "User created successfully";
            $this->data = $user;

        }catch(Exception $ex){

            DB::rollBack();

        }

        return $this;
    }


    public function getUserList($filter){
        
        $this->response_code = ApplicationStatus::SUCCESS;
        
        $this->data = [];
        
        $this->message = "No user found";
        
        $filter['search'] = $filter['search'] ?? "";
        
        $users = $this->user->getAllUsersWithRole($filter);

        if(count($users) > 0){
            $this->data = $users;
            $this->message = "User fetched successfully.";
        }

        return $this;
    }

}
