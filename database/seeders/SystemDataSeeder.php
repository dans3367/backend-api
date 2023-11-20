<?php

namespace Database\Seeders;

use App\Models\Company;
use App\Models\Role;
use App\Models\RoleUser;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class SystemDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Dummy Company Insert
       $company =  Company::create([
                        'name'=>'Dummy Company'
                    ]);

        // Dummy User Insert            
        $user = User::create([
                    'company_id'=>$company['id'],
                    'name'=>'Test user',
                    'phone'=>'0122546992',
                    'email'=>'test@admin.com',
                    'password'=>Hash::make('123456')
                ]);
        
        // Dummy Role Insert        
        $role = Role::create(
            [
                'name'=>'Administrator',
                'description'=>'An administrator is a professional tasked with managing and coordinating various administrative tasks and functions within an organization.',
            ]
        );

        Role::insert([
            [
                'name'=>'Manager',
                'description'=> 'A manager is a professional responsible for overseeing and guiding a team or department within an organization.'
            ],
            [
                'name'=>'Employee',
                'description'=> 'An employee is an individual hired by an organization to perform specific tasks or duties within a defined role.'
            ]
        ]);

        // Assign Role to User
        RoleUser::create(
            [
                'user_id'=> $user['id'],
                'role_id' => $role['id']
            ]
        );
        
    }
}
