<?php class detailOrderController{
    public function index()
    {
        $detailOrder_List=detailOrder::getAll();
        require_once("./views/detailOrder/index_detailOrder.php");
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




}
?>
