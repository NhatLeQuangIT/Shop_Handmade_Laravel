@extends('admin::layouts.master')
@section('content')
    <div class="page-header">
        <ol class="breadcrumb">
            <li><a href="{{ route('admin.home') }}">Trang chủ</a></li>
            <li><a href="">Page Static</a></li>
            <li class="active">Danh sách</li>
        </ol>
    </div>
    <div class="table-responsive">
        <h3>Quản lí bài viết <a href="{{ route('admin.get.create.page_static')}}" class="pull-right btn btn-success">Thêm mới</a></h3>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th width="20%">Tiêu đề trang</th>
                <th>Ngày tạo</th>
                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody>
            @if (isset($pages))
               @foreach($pages as $page)
                    <tr>
                        <td>{{ $page->id }}</td>
                        <td>
                            {{ $page->ps_name }}
                        </td>
                        <td>
                            {{ $page->created_at }}
                        </td>
                        <td>
                            <a href="{{ route('admin.get.edit.page_static',$page->id) }}" class="btn btn-info">Sửa</a>
                        </td>
                    </tr>
                @endforeach
                @endif
            </tbody>
        </table>
    </div>


@stop
