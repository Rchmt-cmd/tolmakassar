<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FrontController extends Controller
{
    public function getIndex(){

        $data['result'] = DB::table('posts')
        ->get();

        return view('home',$data);
    }
}
