@extends('admin::layouts.master')
@section('content')
    <div class="page-header">
        <ol class="breadcrumb">
            <li><a href="{{ route('admin.home') }}">Trang chủ</a></li>
            <li><a href="">Bài viết</a></li>
            <li class="active">Danh sách</li>
        </ol>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <form class="form-inline" action="" style="margin-bottom: 20px;">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Tên bài viết " name="name"
                           value="{{ \Request::get('name') }}">
                </div>


                <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
            </form>
        </div>
    </div>
    <div class="table-responsive">
        <h3>Quản lí bài viết <a href="{{ route('admin.get.create.article')}}" class="pull-right btn btn-success">Thêm mới</a></h3>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th width="20%">Tên bài viết</th>
                <th style="width: 100px">Hình ảnh</th>
                <th style="width: 300px">Mô tả</th>
                <th>Nổi bật</th>
                <th>Trạng thái</th>
                <th>Ngày tạo</th>
                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody>

                @foreach($articles as $article)
                    <tr>
                        <td>{{ $article->id }}</td>
                        <td>
                            {{ $article->a_name }}
                        </td>
                        <td>
                            <img src="{{asset(pare_url_file($article->a_avatar))}}" alt="" class="img img-responsive" style="width: 80px; height: 80px">
                        </td>
                        <td>{{ $article->a_description }}</td>
                        <td>
                            <a href="{{ route('admin.get.action.article',['hot',$article->id]) }}"
                               class=" label {{ $article->getHot($article->c_hot) ['class'] }}">{{ $article->getHot($article->c_hot) ['name'] }}</a>
                        </td>
                        <td>
                            <a href="{{ route('admin.get.action.article',['active',$article->id]) }}"
                               class=" label {{ $article->getStatus($article->a_active) ['class'] }}">{{ $article->getStatus($article->a_active) ['name'] }}</a>
                        </td>
                        <td>
                            {{ $article->created_at }}
                        </td>
                        <td>
                            <a href="{{ route('admin.get.edit.article',$article->id) }}" class="btn btn-info">Sửa</a>
                            <a href="{{ route('admin.get.action.article',['delete',$article->id])}}" class="btn btn-danger">Xóa</a>
                        </td>
                    </tr>
                @endforeach

            </tbody>
        </table>
    </div>
    <div>{{ $articles->links() }}</div>

@stop
