<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;
 use App\Models\Category;



class FrontendController extends Controller
{
   public function __construct()
   {
    $categories = Category::all();
    View::share('categories', $categories);
   }
}
