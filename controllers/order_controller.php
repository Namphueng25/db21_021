<?php class OrderController{
    public function index()
    {
        $order_List=Order::getAll();
        require_once("./views/order/index_order.php");
    }
    public function newOrder(){
        $staffList = staff::gerAll();
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