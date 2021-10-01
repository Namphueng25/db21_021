<?php class detailOrderController{
    public function index()
    {
        $detailOrder_List=detailOrder::getAll();
        require_once("./views/detailOrder/index_detailOrder.php");
    }
    




}
?>
