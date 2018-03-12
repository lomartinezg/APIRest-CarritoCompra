<?php

namespace App\Http\Middleware;

use Closure;

use App\Clientes; // IMPORTO LA CLASE MODELO

use Illuminate\Http\Request; // IMPORTO LA CLASE 

class AuthToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $Autorization = $request->header('Autorization');
     
        $result = Clientes::select("*")
        ->where('token','=', $Autorization)
        ->where('bloqueado','=',0)->first();

        if(empty($result)){
            return response()->json(['error' => 'No esta Autorizado al uso de la API'],403);
        }

        return $next($request);
    }
}
