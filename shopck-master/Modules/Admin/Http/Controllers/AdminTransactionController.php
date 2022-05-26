<?php

namespace Modules\Admin\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;

class AdminTransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index()
    {
        $transactions = Transaction::with('user:id,name')->paginate(10);

        $viewData = [
            'transactions' => $transactions
        ];
        return view('admin::transaction.index',$viewData);
    }

    public function viewOrder(Request $request,$id){
        if ($request->ajax())
        {
            $orders = Order::with('product')
                ->where('or_transaction_id',$id)->get();

            $html = view('admin::components.order',compact('orders'))->render();
            return \response()->json($html);
        }
    }

    /**
     * Xử lí trạng thái đơn hàng
    **/
    public function actionTransaction($id)
    {
        $transaction = Transaction::find($id);
        $orders = Order::where('or_transaction_id',$id)->get();

        if ($orders)
        {
            foreach ($orders as $order)
                {
                    $product = Product::find($order->or_product_id);

                    //trừ đi số lượng sản phẩm
                    $product->pro_number = $product->pro_number - $product->or_qty;

                    //tăng biến thanh toán(pay) sản phẩm
                    $product->pro_pay ++;

                    $product->save();
                }
        }
        //cập nhật người dùng
        \DB::table('users')->where('id',$transaction->tr_user_id)
            ->increment('total_pay');
        //cập nhật lại trạng thái đơn hàng
        $transaction->tr_status = Transaction::STATUS_DONE;
        $transaction->save();
        return redirect()->back()->with('success','Xử lý đơn hàng thành công');
    }
}
