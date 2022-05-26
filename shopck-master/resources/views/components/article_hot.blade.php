
    @if(isset($articleHot))
        @foreach($articleHot as $arHot)
    <div class="article_hot_item">
        <div class="article_img">
            <a href="">
                <img src="{{asset(pare_url_file($arHot->a_avatar))}}" style="max-height: 200px;">
            </a>
        </div>
        <div class="article_info">
            <h5 style="font-size: 18px;margin-top: 15px;margin-bottom: 10px;text-align: justify;">{{$arHot->a_name}}</h5>
            <p style="text-align: justify;">{{$arHot->a_description}}</p>
        </div>
    </div>
    @endforeach
    @endif

