<?php

use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\ormawaController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    $title = 'Login Page';
    $slug = 'dashboard';
    return view('/dashboard',compact('title','slug'));
});
Route::get('/dashboard', function () {
    $title = 'Dashboard';
    $slug = 'dashboard';
    return view('/dashboard',compact('title','slug'));
});

Route::get('/ormawa', [ormawaController::class, 'index']);
Route::get('/ormawa/create', [ormawaController::class, 'create']);
Route::get('/ormawa/store', [ormawaController::class, 'store']);
Route::get('/ormawa/edit/{id}', [ormawaController::class, 'edit']);
Route::get('/ormawa/update/{id}', [ormawaController::class, 'update']);
Route::get('/ormawa/destroy/{id}', [ormawaController::class, 'destroy']);

