<?php

namespace App\Http\Controllers;

use App\Models\Product;

use Illuminate\Http\Request;

class ProductControllers extends Controller
{
    public function productList()
    {
        $products = Product::all();

        return view('welcome', compact('products'));
    }
}
