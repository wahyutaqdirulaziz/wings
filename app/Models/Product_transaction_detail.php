<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_transaction_detail extends Model
{
    use HasFactory;
    protected $fillable = [
        'document_code',
        'document_number',
        'product_code',
        'price',
        'quantity',
        'sub_total',
        'unit',
        'currency'



    ];
    public $timestamps = true;
    public function product_transactions()
    {
        return $this->belongsTo(Product_transaction::class,'document_number','document_number');
    }

    public function products()
    {
        return $this->hasOne(Product::class,'product_code','product_code');
    }
}
