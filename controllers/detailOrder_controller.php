<?php class detailOrderController{
    public function index()
    {
        $order_List=Order::getAll();
        require_once("./views/detailOrder/index_detailOrder.php");
    }
    




}
?>
