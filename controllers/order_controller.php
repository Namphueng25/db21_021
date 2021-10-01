<?php class OrderController{
    public function index()
    {
        $order_List=Order::getAll();
        require_once("./views/order/index_order.php");
    }
    public function newOrder(){
        $staff_List=staff::getAll();
        $customer_List=customer::getAll();
        require_once('./views/order/newOrder.php');
    }
    public function search()
    {
        $key = $_GET['key'];
        $order_List = Order::search($key);
        require_once("./views/order/index_order.php");
    }



}
?>