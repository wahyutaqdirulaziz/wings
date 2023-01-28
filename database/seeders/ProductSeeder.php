<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = [
            [
                'name' => 'So klin Pewangi',
                'product_code' => 'SKUSKILNP',
                'price' => 2500,
                'description' => 'lorem ipsum',
                'image' => 'hhttps://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/6/7/545e27d6-5083-4a06-91ba-5a005c63e7ea.png',
                'dimension'=>'13 CM X 10 CM',
                'currency'=>'IDR',
                'discount'=>0,
                'unit'=>'PCS'
            ],
            [
                'name' => 'So klin Pewangi',
                'product_code' => 'SKUSKILNL',
                'price' => 6000,
                'description' => 'lorem ipsum',
                'image' => 'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/6/7/545e27d6-5083-4a06-91ba-5a005c63e7ea.png',
                'dimension'=>'13 CM X 10 CM',
                'currency'=>'IDR',
                'discount'=>0,
                'unit'=>'PCS'
            ],
            [
                'name' => 'So klin Pewangi',
                'product_code' => 'SKUSKILNR',
                'price' => 5000,
                'description' => 'lorem ipsum',
                'image' => 'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/6/7/545e27d6-5083-4a06-91ba-5a005c63e7ea.png',
                'dimension'=>'13 CM X 10 CM',
                'currency'=>'IDR',
                'discount'=>0,
                'unit'=>'PCS'
            ],
            [
                'name' => 'So klin Pewangi',
                'product_code' => 'SKUSKILNPL',
                'price' => 1200,
                'description' => 'lorem ipsum',
                'image' => 'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/6/7/545e27d6-5083-4a06-91ba-5a005c63e7ea.png',
                'dimension'=>'13 CM X 10 CM',
                'currency'=>'IDR',
                'discount'=>0,
                'unit'=>'PCS'
            ]
        ];
        Product::insert($products);
    }
}
