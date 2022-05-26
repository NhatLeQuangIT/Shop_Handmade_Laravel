@if(!empty($productSuggest))
<div class="our-product-area new-product">
    <div class="container">
        <!-- area title start -->
        <div class="area-title">
            <h2>Sản phẩm đề xuất</h2>
        </div>
        <!-- area title end -->
        <!-- our-product area start -->
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div role="tabpanel" class="tab-pane fade in active" id="home">
                        <div class="row">
                            <div class="features-curosel">
                                <!-- single product start -->
                                @foreach($productSuggest as $product)
                                    <div class="col-lg-12 col-md-12">
                                        <!-- single-product start -->
                                        <div class="single-product first-sale">
                                            <div class="product-img">
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
                                                <a href="{{ route('get.detail.product',[$product->pro_slug,$product->id]) }}" style="border-radius: 5px">
                                                    <img src="{{ asset(pare_url_file($product->pro_avatar)) }}" alt="" style="width: 250px;height: 331px; border-radius: 5px">
                                                    <img class="secondary-image" src="{{ asset(pare_url_file($product->pro_avatar)) }}" alt="" style="width: 250px;height: 331px; border-radius: 5px" />
                                                </a>
                                                <div class="action-zoom" >
                                                    <div class="add-to-cart">
                                                        <a href="{{ route('get.detail.product',[$product->pro_slug,$product->id]) }}" title="Quick View"><i class="fa fa-search-plus"></i></a>
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
                                                            <a href="{{ route('get.detail.product',[$product->pro_slug,$product->id]) }}" title="Add to Compare"><i class="fa fa-retweet"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price">{{ number_format($product->pro_price, 0, '.', '.') }} (VNĐ)</span>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h2 class="product-name"><a href="#">{{ $product->pro_name }}</a></h2>
                                                <p>{{ $product->pro_description }}</p>
                                            </div>
                                        </div>
                                        <!-- single-product end -->
                                    </div>
                            @endforeach
                            <!-- single product end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- our-product area end -->
    </div>
</div>
@endif
