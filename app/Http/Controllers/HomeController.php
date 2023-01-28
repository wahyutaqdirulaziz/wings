<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product_transaction;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $product = Product_transaction::all();
       
        return view('home',compact('product'));
    }
}
