<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Clientes; // IMPORTO LA CLASE MODELO

class ClinetesController extends Controller
{
    //

    // METODO POST AGREGAR //
    public function add(Request $request){
  
            $result = new Clientes;
            $result->email = $request->email;
            $result->clave = $request->clave;
            $result->token = md5(date('dd/mm/yyyy hh:ss')."lomg");
            $result->save();
        
            return response()->json(['Token' => $result->token],200);

    }
    /*****************/

    // METODO PUT MOFIFICAR //
    public function update(Request $request,$id){

        $result = clientes::find($id);
        $result->clave = $request->clave;
        $result->save();

        return response()->json(['ok' => 'Cliente actualizado'],200);

    }

    // METODO GET LISTAR //
    public function listar(Request $request){

        $result = clientes::get();
        return response()->json($result,200);

    }

    // METODO GET LISTAR POR ID //
    public function listarID(Request $request,$id){

        $result = clientes::find($id);

        if(empty($result)){
            return response()->json(['error' => 'No existen resultados'],404);
           }else{
                return response()->json($result,200);
           } 

    }
    
    // METODO DELETE //
    public function borrar(Request $request,$id){

        $result = clientes::find($id);
        $result->bloqueado = 1;
        $result->save();

        return response()->json(['ok' => 'Cliente eliminado'],200);

    }

}
