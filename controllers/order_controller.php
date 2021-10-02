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
    public function updateForm()
    {
        $id=$_GET['id_order'];
        $order = Order::get($id_order);
        $staff_List = staff::getAll();
        $customer_List = customer::getAll();
        require_once("./views/order/updateForm.php");
    }

    public function update()
    {
        $id_order=$_GET['id_order'];
        $date=$_GET['date'];
        $condition=$_GET['condition'];
        $id_cus=$_GET['id_cus'];
        $Staff_id=$_GET['Staff_id'];
        $เงื่อนไข=$_GET['เงื่อนไข'];
       
       
        Order::Update($id_order,$date,$condition,$id_cus,$Staff_id,$เงื่อนไข);

        OrderController::index();
    }

    public function deleteConform()
    {
        $id_order=$_GET['id_order'];
        $order = Order::get($id_order);
        require_once("./views/order/deleteConform.php");
    }
    public function delete()
    {
        $id_order=$_GET['id_order'];
        Order::delete($id_order);
        OrderController::index();
    }
}
?>