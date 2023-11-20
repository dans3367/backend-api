<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserConteroller;
use App\Http\Controllers\StoreConteroller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group([
    'prefix' => 'auth',
], function ($router) {
    Route::post('login', [AuthController::class,'login']);
    Route::post('logout', [AuthController::class,'logout']);
    Route::post('refresh', [AuthController::class,'refresh']);
    Route::get('auth-info', [AuthController::class,'authInfo']);

    Route::middleware('auth:api')->group(function(){
        
        // users
        Route::get('users', [UserConteroller::class,'getUsers']);
        Route::get('stores', [App\Http\Controllers\StoreController::class, 'index']);
    });
    
});
