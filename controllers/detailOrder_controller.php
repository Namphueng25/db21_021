<?php class detailOrderController{
    public function index()
    {
        $detailOrder_List=detailOrder::getAll();
        require_once("./views/detailOrder/index_detailOrder.php");
    }
    public function newdetailOrder(){
        
        $customerList = customer::getAll();
        $staffList = staff::getAll();
        $colorproductList = colorproduct::getAll();
        $productList = product::getAll();
        $orderList = Order::getAll();
        require_once('./views/detailOrder/newdetailOrder.php');
    }
    public function search()
    {
        $key = $_GET['key'];
        $detailOrder_List = detailOrder::search($key);
        require_once("./views/detailOrder/index_detailOrder.php");
    }
    public function updateForm()
    {
        $id = $_GET['id'];
        $detailOrder_List = detailOrder_List::get($id);
       
        require_once("./views/detailOrder/updateForm.php");
    }
    public function update()
    {
        $date = $_GET['date'];
        $no1 = $_GET['no1'];
        $n_pid = $_GET['n_pid'];
        $เงื่อนไข = $_GET['เงื่อนไข'];
        $con_payment = $_GET['con_payment'];
        $n_staff = $_GET['n_staff'];
        $n_customer = $_GET['n_customer'];
        detailOrder::update($date,$no1,$n_pid,$เงื่อนไข,$con_payment,$n_staff,$n_customer);
        detailOrderController::index();
        
    }



}
?>
