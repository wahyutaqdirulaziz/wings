<?php

use App\Http\Controllers\CartControllers;
use App\Http\Controllers\ProductControllers;
use App\Http\Controllers\TransaksiControllers;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [ProductControllers::class, 'productList'])->name('products.list');
Route::get('cart', [CartControllers::class, 'cartList'])->name('cart.list');
Route::post('cart', [CartControllers::class, 'addToCart'])->name('cart.store');
Route::post('update-cart', [CartControllers::class, 'updateCart'])->name('cart.update');
Route::post('remove', [CartControllers::class, 'removeCart'])->name('cart.remove');
Route::post('clear', [CartControllers::class, 'clearAllCart'])->name('cart.clear');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::post('/transaksi', [App\Http\Controllers\TransaksiControllers::class, 'producTranksaksi'])->name('transaksi.store');
