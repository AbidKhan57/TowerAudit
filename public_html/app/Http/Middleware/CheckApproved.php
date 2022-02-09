<?php

namespace App\Http\Middleware;

use Closure;

class CheckApproved
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
        if (auth()->user()->user_status == 'pending' || auth()->user()->user_status == 'disabled' || auth()->user()->user_status == 'deleted') {
            return redirect()->route('approval');
        }
        return $next($request);
    }
}
