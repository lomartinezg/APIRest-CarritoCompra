<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

/**
 * INCLUIMOS LOS MODELOS 
 */
use App\Ventas; // IMPORTO LA CLASE 
use App\VentasDetalle; // IMPORTO LA CLASE 
use App\VentasTotal; // IMPORTO LA CLASE 
use App\VentaSucursal; // IMPORTO LA CLASE 
use App\CodigoVentas; // IMPORTO LA CLASE 


class VentasController extends Controller
{
    //

// METODO POST AGREGAR //
public function add(Request $request){
       
    $result = CodigoVentas::select("*")->where('id_codigo','=',1)->first();

    $codVenta = $result["cod_venta"]+1;
    $codVentaCont = $result["siglas"].$codVenta ;

    $result->cod_venta = $codVenta;
    $result->save();

        $ventas = new Ventas;
        $ventas->id_cliente = $request->id_cliente;
        $ventas->cod_venta = $codVentaCont;
        $ventas->save();

        $idVenta = $ventas->id_venta;

        $total = 0;
        for ($i=0; $i <count($request->listProduct); $i++) { 
            
        
            $ventasdetalle = new VentasDetalle;
            $ventasdetalle->id_venta =  $idVenta;
            $ventasdetalle->id_producto = $request->listProduct[$i]["id_producto"];
            $ventasdetalle->cantidad = $request->listProduct[$i]["cantidad"];
            $ventasdetalle->save();

            $total = $total + $request->listProduct[$i]["cantidad"] * $request->listProduct[$i]["precio"];
        }


        for ($i=0; $i <count($request->listSucursal); $i++) { 
            
            $ventasucursal = new VentaSucursal;
            $ventasucursal->id_venta =  $idVenta;
            $ventasucursal->id_sucursal = $request->listSucursal[$i]["id_sucursal"];
            $ventasucursal->save();
        }


        $ventastotales = new VentasTotal;
        $ventastotales->total = $total;
        $ventastotales->id_ventas =  $idVenta;
        $ventastotales->save();

        return response()->json(['ok' => 'Venta registrada'],200);

}

}
