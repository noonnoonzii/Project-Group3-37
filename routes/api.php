<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/product',[\App\Http\Controllers\API\ProductController::class,'index']);
Route::get('/category',[\App\Http\Controllers\API\CategoryController::class,'index']);
Route::get('/news',[\App\Http\Controllers\API\NewsController::class,'index']);
Route::get('/users',[\App\Http\Controllers\API\UsersController::class,'index']);
