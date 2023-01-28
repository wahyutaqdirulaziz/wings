<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_transaction_details', function (Blueprint $table) {
            $table->id();
            $table->string('document_code');
            $table->string('document_number');
            $table->string('product_code');
            $table->double('price');
            $table->integer('quantity');
            $table->double('sub_total');
            $table->string('unit');
            $table->string('currency');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_transaction_details');
    }
};
