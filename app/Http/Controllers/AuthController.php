<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $email = $request->input('email');
        $password = hash("sha256", $request->input('password'));
        
        $user = User::where('email', $email)
            ->where('password', $password)
            ->first();
        if (!isset($user)) {
            return response(null, 403);
        } else {
            $str = Str::random(100);
            $user->token = $str;
            $user->save();
            return $str;
        }

    }

   
}
