<?php class Order{
     public $id_order;
     public $date;
     public $condition;
     public $id_cus;
     public $Staff_id;
     public $เงื่อนไข;


    public function __construct($id_order,$date,$condition,$id_cus,$Staff_id,$เงื่อนไข)
    {
        $this->id_order = $id_order;
        $this->date = $date;
        $this->condition = $condition;
        $this->id_cus = $id_cus;
        $this->Staff_id = $Staff_id;
        $this->เงื่อนไข = $เงื่อนไข;
    }
    public static function getAll()
    {
        $orderList=[];
        require("connection_connect.php");
        $sql="SELECT * FROM customer_order ";
        $result=$conn->query($sql);
        while($my_row=$result->fetch_assoc())
        {
            $id_order = $my_row[id_order];
            $date = $my_row[date];
            $condition = $my_row[condition ];
            $id_cus = $my_row[id_cus];
            $Staff_id = $my_row[Staff_id];
            $เงื่อนไข = $my_row[เงื่อนไข];
            
            $orderList[] = new Order($id_order,$date,$condition,$id_cus,$Staff_id,$เงื่อนไข);
        }
        require("connection_close.php");
        return $orderList;

    }




}

?>