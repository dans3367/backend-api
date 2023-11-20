<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateUserRequest;
use App\Models\User;
use App\Services\UserService;
use App\Utils\ApplicationStatus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class UserConteroller extends Controller
{
    public function getUsers(Request $request){
        
        $auth_user = auth()->user();

        $inputData = $request->all();

        $inputData['company_id'] = $auth_user->company_id;

        $result =  (new UserService())->getUserList($inputData);
    
        return $this->sendResponse(
                        $result->data,
                        $result->message,
                        $result->response_code
                    );

    }

    public function create(CreateUserRequest $request)
    {
        

        $inputData = $request->all();

        $inputData['avatar'] = $request->file('avatarUrl');

        $result = (new UserService())->createUser($inputData);

        return $this->sendResponse(
            $result->data,
            $result->message,
            $result->response_code
        );
    }
}
