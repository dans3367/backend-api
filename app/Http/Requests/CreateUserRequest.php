<?php

namespace App\Http\Requests;


class CreateUserRequest extends BaseRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'avatar'=>'nullable|image',
            'name'=>'required|string',
            'phone'=>'required|string',
            'country'=>'required|string',
            'email'=>'required|email|unique:users,email',
            'role_id'=>'required|integer',
        ];
    }
}
