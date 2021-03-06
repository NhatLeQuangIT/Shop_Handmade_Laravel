@if($orders)
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
        @foreach($orders as $key => $order)
            <tr>
                <td>#{{ $i }}</td>
                <td><a href="{{ route('get.detail.product',[str_slug($order->product->pro_name),$order->or_product_id]) }}" target="_blank">{{ isset($order->product->pro_name) ? $order->product->pro_name  : ''}}</a></td>
                <td>
                    <img style="width: 80px;height: 80px" src="{{ isset($order->product->pro_avatar) ? asset(pare_url_file($order->product->pro_avatar)) : ''}}" alt="">
                </td>
                <td>
                    {{ number_format($order->or_price, 0, '.', '.') }} (VNĐ)
                </td>
                <td>{{ $order->or_qty }}</td>
                <td>{{ number_format($order->or_qty * $order->or_price, 0, '.', '.') }} (VNĐ)</td>
                <td>
                    <a href="" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
            <?php $i ++ ?>
        @endforeach
        </tbody>
    </table>
@endif

