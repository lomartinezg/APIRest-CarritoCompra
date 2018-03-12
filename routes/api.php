<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use function foo\func;

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

Route::post('/clientes', 'ClinetesController@add');

/* AGRGAMOS CAPA DE SEGURIDAD middleware*/
Route::group(['middleware' => ['AuthToken']], function(){

    Route::put('/clientes/{id}', 'ClinetesController@update');
    Route::delete('/clientes/{id}', 'ClinetesController@borrar');
    Route::get('/clientes', 'ClinetesController@listar');
    Route::get('/clientes/{id}', 'ClinetesController@listarID');

    Route::post('/productos', 'ProductosController@add');
    Route::put('/productos/{id}', 'ProductosController@update');
    Route::delete('/productos/{id}', 'ProductosController@borrar');
    Route::get('/productos', 'ProductosController@listar');
    Route::get('/productos/{id}', 'ProductosController@listarID');

    //Route::get('/consultas', 'ViewUserController@rptEstadoCuentaDetallado');//

    Route::post('/ventas', 'VentasController@add');

    Route::post('/sucursal', 'SucursalController@add');
    Route::put('/sucursal/{id}', 'SucursalController@update');
    Route::delete('/sucursal/{id}', 'SucursalController@borrar');
    Route::get('/sucursal', 'SucursalController@listar');
    Route::get('/sucursal/{id}', 'SucursalController@listarID');
    
});