<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Sucursal; // IMPORTO LA CLASE 

class SucursalController extends Controller
{

// METODO POST AGREGAR //
public function add(Request $request){
       
    //if(!empty($request->nombre) && !empty($request->clave))//

        $result = new Sucursal;
        $result->nombre = $request->nombre;
        $result->cuil = $request->cuil;
        $result->provincia = $request->provincia;
        $result->barrio = $request->barrio;
        $result->direccion = $request->direccion;
        $result->piso = $request->piso;
        $result->oficina = $request->oficina;
        $result->id_cliente= $request->id_cliente;
        $result->save();

        return response()->json(['ok' => 'Sucursal registrada'],200);

}

// METODO PUT MODIFICAR //
public function update(Request $request,$id){

    $result = Sucursal::find($id);
    $result->nombre = $request->nombre;
    $result->cuil = $request->cuil;
    $result->provincia = $request->provincia;
    $result->barrio = $request->barrio;
    $result->direccion = $request->direccion;
    $result->piso = $request->piso;
    $result->oficina = $request->oficina;
    $result->save();

    return response()->json(['ok' => 'Sucursal actualizada'],200);

}

// METODO GET LISTAR //
public function listar(Request $request){

    $result = Sucursal::get();
    return response()->json($result,200);

}

// METODO GET LISTAR POR ID //
public function listarID(Request $request,$id){

    $result = Sucursal::find($id);
    if(empty($result)){
        return response()->json(['error' => 'No existen resultados'],404);
       }else{
            return response()->json($result,200);
       } 

}

// METODO DELETE //
public function borrar(Request $request,$id){

    $result = Sucursal::find($id);
    $result->delete();

    return response()->json(['ok' => 'Sucursal eliminada'],200);

}

}


