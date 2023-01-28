<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'product_code',
        'price',
        'image',
        'description',
        'dimension',
        'currency',
        'discount',
        'unit'

    ];

    public function product_transaction_details()
    {
        return $this->belongsTo(Product_transaction_detail::class,'product_code','product_code');
    }
}
