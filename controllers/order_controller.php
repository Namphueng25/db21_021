<?php class OrderController{
    public function index()
    {
        $order_List=Order::getAll();
        require_once("./views/order/index_order.php");
    }
    public function newOrder(){
        echo "hi";
        $customerList = customer::getAll();
        $staffList = staff::getAll();
        require_once('./views/order/newOrder.php');
    }
    
    public function addOrder()
    {
        
        $id_order = $_GET['id'];
        $date = $_GET['date']; 
        $id_cus = $_GET['c_id'];
        $Staff_id = $_GET['s_id'];
        $condition = $_GET['condition'];
        $เงื่อนไข = $_GET['เงื่อนไข'];
        Order::Add($id_order,$date,$condition,$id_cus,$Staff_id,$เงื่อนไข);
        OrderController::index();
    }

    public function search()
    {
        $key = $_GET['key'];
        $order_List = Order::search($key);
        require_once("./views/order/index_order.php");
    }

    public function deleteConform()

    {
        echo "dcccc";

        $id=$_GET['id_order'];

        $order = Order::get($id);

        require_once("./views/order/deleteConform.php");

    }

    public function delete()

    {
    

        $id=$_GET['id_order'];

        Order::delete($id);

        OrderController::index();

    }
    
    


}
?>