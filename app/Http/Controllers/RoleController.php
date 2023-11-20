<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Utils\ApplicationStatus;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    public function getRoleList(){

        $data = (new Role())->getAllRoleList();

        return $this->sendResponse($data,__('Successfully fetched'),ApplicationStatus::SUCCESS);

    }
}
