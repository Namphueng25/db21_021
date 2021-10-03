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
    public function adddetailOrder()
    {
        
        
        $date = $_GET['date'];
        $con_payment = $_GET['con_payment']; 
        $เงื่อนไข = $_GET['เงื่อนไข'];
        $stock_id1 = $_GET['stock_id1'];
        $s_id = $_GET['s_id'];
        $c_id = $_GET['c_id'];
        $p_id = $_GET['p_id'];
        $cp_color = $_GET['cp_color'];
        $n_pจำนวน = $_GET['n_pจำนวน'];
        $n_pscreen = $_GET['n_pscreen'];
        $id_order = $_GET['id_order'];

        echo $date ;
        echo $con_payment ;
        echo $เงื่อนไข;
        echo $stock_id1 ;
        echo $s_id ;
        echo $c_id ;
        echo $p_id ;
        echo $cp_color; 
        echo $n_pจำนวน ;
        echo $n_pscreen; 
        echo $id_order ;

        
        detailOrder::Add($date,$con_payment,$เงื่อนไข,$stock_id1,$s_id,$c_id,$p_id,$cp_color,$n_pจำนวน,$n_pscreen,$id_order);
        detailOrderController::index();
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
