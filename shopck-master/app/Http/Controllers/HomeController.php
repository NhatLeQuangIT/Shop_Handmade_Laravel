<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\Order;
use App\Models\Product;
use App\Models\Transaction;
use Illuminate\Http\Request;
use MongoDB\Driver\Query;

class HomeController extends FrontendController
{
    public function __construct()
    {
        parent:: __construct();
    }


    public function index()
    {
        $productHot = Product::where([
            'pro_hot' => Product::HOT_ON,
            'pro_active' => Product::STATUS_PUBLIC
        ])->limit(10)->get();

        $articleNews = Article::orderBy('id','ASC')->limit(6)->get();

        $categoriesHome = Category::with('products')
            ->where('c_home',Category::HOME)
            ->limit(3)
            ->get();

        $productSuggest = [];

        //kiểm trả người dùng đăng nhập
            if(get_data_user('web'))
            {
               $transitions = Transaction::where([
                   'tr_user_id' => get_data_user('web'),
                   'tr_status'  =>Transaction::STATUS_DONE
               ])->pluck('id');



                if (!empty($transitions))
                {
                    $listId = Order::whereIn('or_transaction_id',$transitions)->distinct()->pluck('or_product_id');

                    if (!empty($listId))
                    {
                        $listIdCategory = Product::whereIn('id',$listId)->distinct()->pluck('pro_category_id');

                        if ($listIdCategory)
                        {
                            $productSuggest = Product::whereIn('pro_category_id',$listIdCategory)->limit(20)->get();
                        }
                    }
                }

            }
        //chưa đăng nhập thì thôi

        $viewData = [
            'productHot'        => $productHot,
            'articleNews'       => $articleNews,
            'categoriesHome'    => $categoriesHome,
            'productSuggest'    => $productSuggest
        ];

        return view('home.index',$viewData);
    }
}
