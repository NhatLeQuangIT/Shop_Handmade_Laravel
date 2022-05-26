<!-- category-banner area start -->
@extends('layouts.app')
@section('content')

    <style>
        .sidebar-content .active {color: #c2a476;}
    </style>
    <!-- breadcrumbs area start -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="container-inner">
                        <ul>
                            <li class="home">
                                <a href="{{ route('home') }}">Trang chủ</a>
                                <span><i class="fa fa-angle-right"></i></span>
                            </li>
                            <li class="category3"><span>{{ $cateProduct->c_name }}</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->
    <!-- shop-with-sidebar Start -->
    <div class="shop-with-sidebar">
        <div class="container">
            <div class="row">
                <!-- left sidebar start -->
                <div class="col-md-3 col-sm-12 col-xs-12 text-left">
                    <div class="topbar-left">
                        <aside class="widge-topbar">
                            <div class="bar-title">
                                <div class="bar-ping"><img src="{{asset('img/bar-ping.png')}}" alt="" /></div>
                                <h2>Lọc danh mục</h2>
                            </div>
                        </aside>
                        <aside class="sidebar-content">
                            <div class="sidebar-title">
                                <h6>Khoảng giá</h6>
                            </div>
                            <ul>
                                <li><a class="{{ Request::get('price') == 1 ? 'active' : '' }}" href="{{ request()->fullUrlWithQuery(['price' => 1]) }}"> Dưới 100000</a></li>
                                <li><a class="{{ Request::get('price') == 2 ? 'active' : '' }}" href="{{ request()->fullUrlWithQuery(['price' => 2]) }}"> Từ 100.000 - 300.000 VNĐ</a></li>
                                <li><a class="{{ Request::get('price') == 3 ? 'active' : '' }}" href="{{ request()->fullUrlWithQuery(['price' => 3]) }}"> Từ 300.000 - 500.000 VNĐ</a></li>
                                <li><a class="{{ Request::get('price') == 4 ? 'active' : '' }}" href="{{ request()->fullUrlWithQuery(['price' => 4]) }}"> Từ 500.000 - 1.000.000 VNĐ</a></li>
                                <li><a class="{{ Request::get('price') == 5 ? 'active' : '' }}" href="{{ request()->fullUrlWithQuery(['price' => 5]) }}"> Từ 1.000.000 - 5.000.000 VNĐ</a></li>
                                <li><a class="{{ Request::get('price') == 6 ? 'active' : '' }}" href="{{ request()->fullUrlWithQuery(['price' => 6]) }}"> Lơn hơn 5.000.000 VNĐ</a></li>
                            </ul>
                        </aside>

                        <aside class="sidebar-content">
                            <div class="sidebar-title">
                                <h6>Properties</h6>
                            </div>
                            <ul>
                                <li><a href="#">Colorful Dress</a><span> (1)</span></li>
                                <li><a href="#">Maxi Dress</a><span> (2)</span></li>
                                <li><a href="#">Midi Dress</a><span> (2)</span></li>
                                <li><a href="#">Short Dress</a><span> (2)</span></li>
                                <li><a href="#">Short Sleeve</a><span> (2)</span></li>
                            </ul>
                        </aside>
                        <aside class="widge-topbar">
                            <div class="bar-title">
                                <div class="bar-ping"><img src="{{asset('img/bar-ping.png')}}" alt=""></div>
                                <h2>Tags</h2>
                            </div>
                            <div class="exp-tags">
                                <div class="tags">
                                    <a href="#">Hoa</a>
                                    <a href="#">Phụ kiện</a>
                                    <a href="#">Bánh kẹo</a>
                                    <a href="#">Mô hình</a>
                                    <a href="#">Đồ tết</a>
                                    <a href="#">Túi handmade</a>

                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                <!-- left sidebar end -->
                <!-- right sidebar start -->
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <!-- shop toolbar start -->
                    <div class="shop-content-area">
                        <div class="shop-toolbar">
                            <div class="col-xs-12 nopadding-left text-left">
                                <form class="tree-most" id="form_order" method="get">
                                    <div class="orderby-wrapper pull-right">
                                        <label>Sắp xếp</label>
                                        <select name="orderby" class="orderby" >
                                            <option {{ Request::get('orderby') == "defautl" || !Request::get('orderby') ? "selected='selected'" : "" }} value="defautl" selected="selected" >Mặc định</option>
                                            <option {{ Request::get('orderby') == "desc" ? "selected='selected'" : "" }} value="desc">Mới nhất</option>
                                            <option {{ Request::get('orderby') == "asc" ? "selected='selected'" : "" }} value="asc">Sản phẩm cũ</option>
                                            <option {{ Request::get('orderby') == "price_max" ? "selected='selected'" : "" }} value="price_max">Giá tăng dần</option>
                                            <option {{ Request::get('orderby') == "price_min" ? "selected='selected'" : "" }} value="price_min">Giá giảm dần</option>
                                        </select>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <!-- shop toolbar end -->
                    <!-- product-row start -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="shop-list-tab">
                            <div class="row">
                                @foreach($products as $product)
                                <div class="shop-product-tab first-sale">
                                    <div class="col-lg-3 col-md-3 col-sm-3">
                                        <div class="two-product">
                                            <!-- single-product start -->
                                            <div class="single-product">
{{--                                                <span class="sale-text">Sale</span>--}}
                                                @if($product->pro_number == 0)
                                                    <span style="   position: absolute;
                                                                            background: red;
                                                                            color: white;
                                                                            padding: 5px 8px;
                                                                            border-radius: 5px;
                                                                            font-size: 12px">
                                                                Tạm hết hàng
                                                            </span>
                                                @endif
                                                @if($product->pro_sale)
                                                    <span style="   position: absolute;
                                                                            font-size: 13px;
                                                                            color: white;
                                                                            background-color: #66b2ff;
                                                                            border-radius: 10px ;
                                                                            padding: 5px 7px;
                                                                            right: 0%;

                                                                            ">
                                                                Giảm {{$product->pro_sale}}%
                                                            </span>
                                                @endif
                                                <div class="product-img">
                                                    <a href="{{route('get.detail.product',[$product->pro_slug,$product->id])}}">
                                                        <img class="primary-image" src="{{ asset(pare_url_file($product->pro_avatar)) }}" alt=""  style="width: 200px; height: 250px"/>
                                                        <img class="secondary-image" src="{{ asset(pare_url_file($product->pro_avatar)) }}" alt=""  style="width: 200px; height: 250px"/>
                                                    </a>
                                                    <div class="action-zoom">
                                                        <div class="add-to-cart">
                                                            <a href="{{route('get.detail.product',[$product->pro_slug,$product->id])}}" title="Quick View"><i class="fa fa-search-plus"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="actions">
                                                        <div class="action-buttons">
                                                            <div class="add-to-links">
                                                                <div class="add-to-wishlist">
                                                                    <a href="#" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                </div>
                                                                <div class="compare-button">
                                                                    <a href="{{ route('add.shopping.cart',$product->id) }}" title="Add to Cart"><i class="icon-bag"></i></a>
                                                                </div>
                                                            </div>
                                                            <div class="quickviewbtn">
                                                                <a href="#" title="Add to Compare"><i class="fa fa-retweet"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="price-box">
                                                        <span class="new-price">{{number_format($product->pro_price,0,',','.')}} VNĐ</span>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h2 class="product-name"><a href="{{route('get.detail.product',[$product->pro_slug,$product->id])}}">{{ $product->pro_name }}</a></h2>
                                                    <p>{{ $product->pro_description }}</p>
                                                </div>
                                            </div>
                                            <!-- single-product end -->
                                        </div>
                                    </div>

                                </div>
                                @endforeach
                            </div>
                        <!-- list view -->
                        <!-- shop toolbar start -->
                        <div class="shop-content-bottom">
                            <div class="shop-toolbar btn-tlbr">
                                <div class="col-md-4 col-sm-4 col-xs-12 text-center">
                                    <div class="pages">
                                        {!! $products->links() !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <!-- shop toolbar end -->
                    </div>
                </div>
                <!-- right sidebar end -->
            </div>
        </div>
    </div>
    <!-- shop-with-sidebar end -->
    <!-- Brand Logo Area Start -->
    <div class="brand-area">
        <div class="container">
            <div class="row">
                <div class="brand-carousel">
                    <div class="brand-item"><a href="#"><img src="{{asset('img/brand/bg1-brand.jpg')}}" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="{{asset('img/brand/bg2-brand.jpg')}}" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="{{asset('img/brand/bg3-brand.jpg')}}" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="{{asset('img/brand/bg4-brand.jpg')}}" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="{{asset('img/brand/bg5-brand.jpg')}}" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="{{asset('img/brand/bg2-brand.jpg')}}" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="{{asset('img/brand/bg3-brand.jpg')}}" alt="" /></a></div>
                    <div class="brand-item"><a href="#"><img src="{{asset('img/brand/bg4-brand.jpg')}}" alt="" /></a></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Brand Logo Area End -->
@stop


@section('script')
    <script>
        $(function () {
            $('.orderby').change(function () {
                $("#form_order").submit();
            })
        })
    </script>
@stop
