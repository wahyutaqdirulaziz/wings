<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_transaction extends Model
{
    use HasFactory;
    protected $fillable = [
        'document_code',
        'document_number',
        'user'


    ];
    public $timestamps = true;


    public function product_transaction_details()
    {
        return $this->hasMany(Product_transaction_detail::class,'document_number','document_number');
    }
}
