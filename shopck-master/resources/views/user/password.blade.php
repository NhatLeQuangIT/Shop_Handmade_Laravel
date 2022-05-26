@extends('user.layout')
@section('content')

    <h1 class="page-header">Cập nhật mật khẩu</h1>
    <div class="row">
        <div class="col-sm-12">
            <form action="" method="POST">
                @csrf
                <div class="form-group" style="position: relative;">
                    <label for="password">Mật khẩu cũ:</label>
                    <input type="password" class="form-control"  name="password_old" placeholder="Password..." value="">
                    <a style="position: absolute;top: 54%;right: 10px;color: #333333" href="javascript:;void(0)"><i class="fa fa-eye"></i></a>
                    @if($errors->has('password_old'))
                        <span class="error-text">
                            {{$errors->first('password_old')}}
                         </span>
                    @endif
                </div>
                <div class="form-group" style="position: relative;">
                    <label for="password">Mật khẩu mới:</label>
                    <input type="password" class="form-control"  name="password" placeholder="Password..." value="">
                    <a style="position: absolute;top: 54%;right: 10px;color: #333333" href="javascript:;void(0)"><i class="fa fa-eye"></i></a>
                    @if($errors->has('password'))
                        <span class="error-text">
                            {{$errors->first('password')}}
                         </span>
                    @endif
                </div>
                <div class="form-group" style="position: relative;">
                    <label for="password">Xác nhận mật khẩu :</label>
                    <input type="password" class="form-control"  name="password_comfirm" placeholder="Password..." value="">
                    <a style="position: absolute;top: 54%;right: 10px;color: #333333" href="javascript:;void(0)"><i class="fa fa-eye"></i></a>
                    @if($errors->has('password_comfirm'))
                        <span class="error-text">
                            {{$errors->first('password_comfirm')}}
                         </span>
                    @endif
                </div>
                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>Cập nhật</button>
            </form>
        </div>
    </div>

@stop
@section('script')
    <script>
        $(function () {
            $(".form-group a").click(function () {
                let $this = $(this);
                if($this.hasClass('active'))
                {
                    $this.parent('.form-group').find('input').attr('type','password');
                    $this.removeClass('active');
                }else{
                    $this.parent('.form-group').find('input').attr('type','text');
                    $this.addClass('active');
                }
            });
        });
    </script>
@stop


