@extends('layouts.app')
@section('content')
    @include('components.slide')
    <style>
        .active   {
            color: #ff9705;
        }
    </style>
    <!-- product section start -->
    <div class="our-product-area">
        <div class="container">
            <!-- area title start -->
            <div class="area-title">
                <h2>Sản phẩm nổi bật</h2>
            </div>
            <!-- area title end -->
            <!-- our-product area start -->
            <div class="row">
                <div class="col-md-12">
                    <div class="features-tab">
                        <div class="tab-content">
                            @if(isset($productHot))
                                <div role="tabpanel" class="tab-pane fade in active" id="home">
                                    <div class="row">
                                        <div class="features-curosel">
                                            <!-- single product start -->
                                            @foreach($productHot as $productHot)
                                                <div class="col-lg-12 col-md-12">
                                                    <!-- single-product start -->
                                                    <div class="single-product first-sale">
                                                        <div class="product-img">
                                                            @if($productHot->pro_number == 0)
                                                            <span style="   position: absolute;
                                                                            background: red;
                                                                            color: white;
                                                                            padding: 5px 8px;
                                                                            border-radius: 5px;
                                                                            font-size: 12px">
                                                                Tạm hết hàng
                                                            </span>
                                                            @endif
                                                            @if($productHot->pro_sale)
                                                            <span style="   position: absolute;
                                                                            font-size: 13px;
                                                                            color: white;
                                                                            background-color: #66b2ff;
                                                                            border-radius: 10px ;
                                                                            padding: 5px 7px;
                                                                            right: 0%;

                                                                            ">
                                                                Giảm {{$productHot->pro_sale}}%
                                                            </span>
                                                            @endif
                                                            <a href="{{ route('get.detail.product',[$productHot->pro_slug,$productHot->id]) }}" style="border-radius: 5px">
                                                                <img src="{{ asset(pare_url_file($productHot->pro_avatar)) }}" alt="" style="width: 250px;height: 331px; border-radius: 5px">
                                                                <img class="secondary-image" src="{{ asset(pare_url_file($productHot->pro_avatar)) }}" alt="" style="width: 250px;height: 331px; border-radius: 5px" />
                                                            </a>
                                                            <div class="action-zoom" >
                                                                <div class="add-to-cart">
                                                                    <a href="{{ route('get.detail.product',[$productHot->pro_slug,$productHot->id]) }}" title="Quick View"><i class="fa fa-search-plus"></i></a>
                                                                </div>
                                                            </div>
                                                            <div class="actions">
                                                                <div class="action-buttons">
                                                                    <div class="add-to-links">
                                                                        <div class="add-to-wishlist">
                                                                            <a href="" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                        <div class="compare-button">
                                                                            <a href="{{ route('add.shopping.cart',$productHot->id) }}" title="Add to Cart"><i class="icon-bag"></i></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="quickviewbtn">
                                                                        <a href="{{ route('get.detail.product',[$productHot->pro_slug,$productHot->id]) }}" title="Add to Compare"><i class="fa fa-retweet"></i></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="price-box">
                                                                <span class="new-price">{{ number_format($productHot->pro_price, 0, '.', '.') }} (VNĐ)</span>
                                                            </div>
                                                        </div>
                                                        <div class="product-content">
                                                            <h2 class="product-name"><a href="#">{{ $productHot->pro_name }}</a></h2>
                                                            <p>{{ $productHot->pro_description }}</p>
                                                        </div>
                                                    </div>
                                                    <!-- single-product end -->
                                                </div>
                                            @endforeach
                                        <!-- single product end -->
                                        </div>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            <!-- our-product area end -->
        </div>
    </div>
    <!-- product section end -->
    @include('components.banner')
    @include('components.product_suggest')
    <!-- latestpost area start -->
    @if(isset($articleNews))
        <div class="latest-post-area">
            <div class="container">
                <div class="area-title">
                    <h2>Bài viết mới</h2>
                </div>
                <div class="row">

                    <div class="all-singlepost">
                        <!-- single latestpost start -->
                        @foreach($articleNews as $arNew)
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="single-post" >
                                    <div class="post-thumb">
                                        <a href="#">
                                            <img src="{{ asset(pare_url_file($arNew->a_avatar)) }}" alt="" style="width: 370px;height: 280px;margin-top: 5px;"/>
                                        </a>
                                    </div>
                                    <div class="post-thumb-info">
                                        <div class="post-time">
                                            <a href="#">{{ $arNew->a_name }}</a>
                                        </div>
                                        <div class="postexcerpt">
                                            <p>{{ $arNew->a_description }}</p>
                                            <a href="#" class="read-more">Xem thêm</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    <!-- single latestpost end -->
                    </div>
                </div>
            </div>
        </div>
    @endif
    <!-- latestpost area end -->
    <!-- block category area start -->
    <div class="block-category">
        <div class="container">
            <div class="row">
                    @if (isset($categoriesHome))
                     @foreach($categoriesHome as $categoriHome)
                        <div class="col-md-4">
                    <!-- block title start -->
                    <div class="block-title">
                        <h2>{{ $categoriHome->c_name }}</h2>
                    </div>
                    <!-- block title end -->
                    <!-- block carousel start -->
                            @if(isset($categoriHome->products))
                                <div class="block-carousel">
                                    @foreach($categoriHome->products as $product)
                                        <?php
                                        $ageDetail = 0;

                                        if ($product->pro_total_rating)
                                        {
                                            $ageDetail = round($product->pro_total_number / $product->pro_total_rating,2);
                                        }
                                        ?>
                                    <div class="block-content">
                                        <!-- single block start -->
                                        <div class="single-block">
                                            <div class="block-image pull-left">
                                                <a href="{{ route('get.detail.product',[$product->pro_slug,$product->id]) }}"><img src="{{asset(pare_url_file($product->pro_avatar))}}" style="width: 170px;height: 208px;" alt="" /></a>
                                            </div>
                                            <div class="category-info">
                                                <h3><a href="{{ route('get.detail.product',[$product->pro_slug,$product->id]) }}">{{$product->pro_name}}</a></h3>
                                                <p>{{$product->pro_description}}</p>
                                                <div class="cat-price">{{ number_format($product->pro_price, 0, '.', '.') }} (VNĐ) <span class="old-price">{{ number_format($product->pro_price, 0, '.', '.') }} (VNĐ)</span></div>
                                                <div class="cat-rating">
                                                    @for($i = 1 ; $i <= 5 ; $i++)
                                                        <a href="#"><i class="fa fa-star {{ $i <= $ageDetail ? 'active' : '' }}"></i></a>
                                                    @endfor
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single block end -->
                                    </div>
                                    @endforeach
                                </div>
                            @endif
                    <!-- block carousel end -->
                </div>
                    @endforeach
                    @endif
            </div>
        </div>
    </div>
    <!-- block category area end -->
    <!-- testimonial area start -->
    <div class="testimonial-area lap-ruffel">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="crusial-carousel">
                        <div class="crusial-content">
                            <p>“Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."</p>
                            <span>BootExperts</span>
                        </div>
                        <div class="crusial-content">
                            <p>“Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."</p>
                            <span>Lavoro Store!</span>
                        </div>
                        <div class="crusial-content">
                            <p>“Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."</p>
                            <span>MR Selim Rana</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- testimonial area end -->
    <!-- Brand Logo Area Start -->
    <div class="brand-area">
        <div class="container">
            <div class="row">
                <div class="brand-carousel">
                    <div class="brand-item"><a href="#"><img src="img/brand/bg1-brand.jpg" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="img/brand/bg2-brand.jpg" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="img/brand/bg3-brand.jpg" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="img/brand/bg4-brand.jpg" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="img/brand/bg5-brand.jpg" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="img/brand/bg2-brand.jpg" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="img/brand/bg3-brand.jpg" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="img/brand/bg4-brand.jpg" alt="" /></a></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Brand Logo Area End -->
@stop
@section('script')
    <script>
        $(function () {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name = "csrf-token"]').attr('content')
                }
            });

            {{--let routeRenderProduct = '{{ route('post.product.view') }}';--}}
            checkRenderProduct = false;
            $(document).on('scroll', function(){
                if ($(window).scrollTop() > 150 && checkRenderProduct == false )
                {

                    checkRenderProduct = true;
                    let products = localStorage.getItem('products');
                    products = $.parseJSON(products)

                    if (products.length > 0)
                    {
                        $.ajax({
                            url : routeRenderProduct,
                            method : "POST",
                            data : { id : products},
                            success : function (result)
                            {
                                $("#product_view").html('').append(result.data)
                            }
                        });
                    }
                }
            });
        });
    </script>
@stop
