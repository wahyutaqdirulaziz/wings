<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product_transaction;
use App\Models\Product_transaction_detail;
use Auth;

class TransaksiControllers extends Controller
{
    public function producTranksaksi(Request $request)
    {
        // dd($this->makeID());
        // dd($request->all());
        $input = $request->input();
        $input['document_code'] = "TRX";
        $input['document_number'] = str_replace('.', '-', microtime(true) );
        $input['user'] = Auth::user()->name;
        $transaksi =  Product_transaction::create($input);
        for($i = 0; $i < count($request->input('product_code')); $i++) {
            Product_transaction_detail::create([
              'document_code' => $transaksi->document_code,
              'document_number' => $transaksi->document_number,
              'product_code' => $request->input('product_code')[$i],
              'price' => $request->input('price')[$i],
              'quantity' => $request->input('quantity')[$i],
              'sub_total' => $request->input('sub_total')[$i],
              'unit' => 'PCS',
              'currency' => 'IDR'
            ]);
          }



        return redirect()->route('products.list');
    }

    function makeID($prefix = 'TRX'){
        $time = str_replace('.', '-', microtime(true) );
        return $prefix.'-'.$time;
    }
}
