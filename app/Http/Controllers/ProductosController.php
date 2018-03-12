<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Productos; // IMPORTO LA CLASE 

class ProductosController extends Controller
{

// METODO POST AGREGAR //
public function add(Request $request){
       
    //if(!empty($request->nombre) && !empty($request->clave))//

        $result = new Productos;
        $result->tipo = $request->tipo;
        $result->descripcion = $request->descripcion;
        $result->precio = $request->precio;
        $result->save();

        return response()->json(['ok' => 'Producto registrado'],200);

}

// METODO PUT MODIFICAR //
public function update(Request $request,$id){

    $result = productos::find($id);
    $result->tipo = $request->tipo;
    $result->descripcion = $request->descripcion;
    $result->precio = $request->precio;
    $result->save();

    return response()->json(['ok' => 'Producto actualizado'],200);

}

// METODO GET LISTAR //
public function listar(Request $request){

    //$result = productos::select('*')
    //->join('clientes', 'clientes.id', '=', 'productos.id_cliente')
    //->get();
    $result = productos::get();
    return response()->json($result,200);

}

// METODO GET LISTAR POR ID //
public function listarID(Request $request,$id){

    $result = productos::find($id);
    if(empty($result)){
        return response()->json(['error' => 'No existen resultados'],404);
       }else{
            return response()->json($result,200);
       } 

}

// METODO DELETE //
public function borrar(Request $request,$id){

    $result = productos::find($id);
    $result->delete();

    return response()->json(['ok' => 'Producto eliminado'],200);

}

}
