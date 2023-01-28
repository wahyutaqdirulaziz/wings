@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Laporan Pembelian</div>

                <div class="card-body">
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">transaction</th>
                            <th scope="col">user</th>
                            <th scope="col">total</th>
                            <th scope="col">Date</th>
                            <th scope="col">Item</th>
                          </tr>
                        </thead>
                        <tbody>
                            <?php
                                $total = 0;

                                ?>
                            @foreach ($product as $p)
                            <tr>
                                <th scope="row">{{ $p->document_code."-".$p->document_number }}</th>
                                <td>{{ $p->user }}</td>
                                <td>
                                    {{ $p->product_transaction_details->sum('sub_total') }}</td>


                                <td>{{ $p->created_at }}</td>
                                <td>@foreach ($p->product_transaction_details as $k)
                                    {{ $k->products->name }}<br/>
                                @endforeach</td>
                              </tr>
                            @endforeach


                        </tbody>
                      </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
