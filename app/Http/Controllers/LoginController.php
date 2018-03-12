<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Clientes; // IMPORTO LA CLASE MODELO

class LoginController extends Controller
{
    //

    public function Autenticacion (Request $request){

        $result = Clientes::select("*")
        ->where('email','=', $request->usaurio)
        ->where('clave','=', $requestt->clave) 
        ->where('bloqueado','=',0)->first();

        if(empty($result)){
            return response()->json(['error' => 'No estas registrado'],404);
           }else{
            return response()->json(['Token' => $result->token],200);
           }       

    }
}