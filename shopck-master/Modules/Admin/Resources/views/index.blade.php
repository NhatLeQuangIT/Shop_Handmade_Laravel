@extends('admin::layouts.master')

@section('content')
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/drilldown.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
  <h1 class="page-header">Tổng quan</h1>
    <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder" style="position: relative;">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4 style="position: absolute;top: 50%;left: 50%;transform: translateX(-50%) translateY(-50%);margin: 0;color: white;">140 thành viên</h4>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder" style="position: relative;">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4 style="position: absolute;top: 50%;left: 50%;transform: translateX(-50%) translateY(-50%);margin: 0;color: white;">100 sản phẩm</h4>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder" style="position: relative;">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4 style="position: absolute;top: 50%;left: 50%;transform: translateX(-50%) translateY(-50%);margin: 0;color: white;">100 bài viết</h4>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder" style="position: relative;">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4 style="position: absolute;top: 50%;left: 50%;transform: translateX(-50%) translateY(-50%);margin: 0;color: white;">30 đánh giá</h4>
            </div>
          </div>
    <div class="row">
        <div class="col-sm-4">
            <figure class="highcharts-figure">
                <div id="container"></div>
            </figure>
        </div>
        <div class="col-sm-8">
            <h2>Danh sách đơn hàng</h2>
            <table class="table table-striped ">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Tên khách hàng</th>
                    <th>Số điện thoại</th>
                    <th>Tổng tiền</th>
                    <th>Trạng thái</th>
                    <th>Thời gian</th>
                </tr>
                </thead>
                <tbody>
                @foreach($transactionsNew as $transaction)
                    <tr>
                        <td>#{{$transaction->id}}</td>
                        <td>{{ isset($transaction->user->name) ? $transaction->user->name: '[N\A]' }}</td>
                        <td>{{ $transaction->tr_phone }}</td>
                        <td>{{ number_format($transaction->tr_total,0,',','.') }} VNĐ</td>
                        <td>
                            @if( $transaction->tr_status == 1)
                                <a href="" class="label label-success ">Đã xử lý</a>
                            @else
                                <a href="{{ route('admin.get.active.transaction',$transaction->id) }}" class="label label-default">Chờ xử lý</a>
                            @endif
                        </td>
                        <td>
                            {{$transaction->created_at->format('d-m-yy')}}
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <h2 class="sub-header">Danh sách đánh giá mới nhất</h2>
            <div class="table-responsive">
                <h3>Quản lí đánh giá</h3>
                <table class="table table-striped ">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Tên TV</th>
                        <th>Sản phẩm</th>
                        <th>Đánh giá</th>
                    </tr>
                    </thead>
                    <tbody>

                    @if(isset($ratings))
                        @foreach($ratings as $rating)
                            <tr>
                                <td>{{ $rating->id }}</td>
                                <td>{{ isset($rating->user->name) ? $rating->user->name : '[N\A]' }}</td>
                                <td><a href="">{{ isset($rating->product->pro_name) ? $rating->product->pro_name : '[N\A]' }}</a></td>
                                <td>{{ $rating->ra_number }}</td>
                            </tr>
                        @endforeach
                    @endif

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@stop

@section('script')
    <script>
        let data = "{{ $dataMoney }}";
        dataChart = JSON.parse(data.replace(/&quot;/g,'"'));

        Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Biểu đồ doanh thu theo ngày và tháng'
            },
            accessibility: {
                announceNewData: {
                    enabled: true
                }
            },
            xAxis: {
                type: 'category'
            },
            yAxis: {
                title: {
                    text: 'Mức độ '
                }

            },
            legend: {
                enabled: false
            },
            plotOptions: {
                series: {
                    borderWidth: 0,
                    dataLabels: {
                        enabled: true,
                        format: '{point.y:.2f} VNĐ'
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f} VNĐ</b> of total<br/>'
            },

            series: [
                {
                    name: "Browsers",
                    colorByPoint: true,
                    data: dataChart
                }
            ],
        });
    </script>
@stop
