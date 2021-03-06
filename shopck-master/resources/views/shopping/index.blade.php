@extends('layouts.app')
@section('content')

    <div class="our-product-area">
        <div class="container">
            <!-- area title start -->
            <div class="area-title">
                <h2>Giỏ hàng</h2>
            </div>
            <table class="table">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên sản phẩm</th>
                    <th>Hình ảnh</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Thành tiền</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <?php $i = 1 ?>
                    @foreach($products as $key => $product)
                    <tr>
                        <td>#{{ $i }}</td>
                        <td><a href="">{{ $product->name }}</a></td>
                        <td>
                            <img style="width: 80px;height: 80px" src="{{ asset(pare_url_file($product->options->avatar)) }}" alt="">
                        </td>
                        <td>
                            {{ number_format($product->price, 0, '.', '.') }} (VNĐ)
                        </td>
                        <td>{{ $product->qty }}</td>
                        <td>{{ number_format($product->qty * $product->price, 0, '.', '.') }} (VNĐ)</td>
                        <td>
                            <a href="" class="btn btn-info">Sửa</a>
                            <a href="{{ route('delete.shopping.cart',$key) }}" class="btn btn-danger">Xóa</a>
                        </td>
                    </tr>
                        <?php $i ++ ?>
                    @endforeach
                </tbody>
            </table>
            <h5 class="pull-right">Tổng tiền cần thanh toán {{ Cart::subtotal() }} <a href="{{route('get.form.pay')}}" class="btn btn-success">Thanh toán</a></h5>

        </div>
    </div>

@stop
