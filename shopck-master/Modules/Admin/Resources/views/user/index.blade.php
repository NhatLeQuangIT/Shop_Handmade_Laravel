@extends('admin::layouts.master')
@section('content')
    <div class="page-header">
        <ol class="breadcrumb">
            <li><a href="#">Trang chủ</a></li>
            <li><a href="#">Thành viên</a></li>
            <li class="active">Danh sách</li>
        </ol>
    </div>
    <div class="table-responsive">
        <h3>Quản lí thành viên</h3>
        <table class="table table-striped ">
            <thead>
            <tr>
                <th>#</th>
                <th>Tên hiển thị</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Hình ảnh</th>
                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody>

                @if(isset($users))
                    @foreach($users as $user)
                        <tr>
                            <td>{{ $user->id }}</td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td>{{ $user->phone }}</td>
                            <td>
                                <img src="{{asset(pare_url_file($user->avatar))}}" alt="" class="img img-responsive" style="width: 80px; height: 80px">
                            </td>
                            <td>
                                <a href="{{ route('admin.get.edit.product',$user->id) }}" class="btn btn-info">Sửa</a>
                                <a href="{{ route('admin.get.action.product',['delete',$user->id])}}" class="btn btn-danger">Xóa</a>
                            </td>
                        </tr>
                    @endforeach
                @endif

            </tbody>
        </table>
    </div>
@stop
