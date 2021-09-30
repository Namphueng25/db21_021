<?php 
class Order
{
    public $id
    public $date
    public $ID_Customer
    public $ID_Staff
    public $Condition
    public $Conform

    public function__construct($id,$date,$ID_Customer,$ID_Staff,$Condition,$Conform)
    {
             $this->id = $id;
             $this->date = $date;
             $this->ID_Customer = $ID_Customer;
             $this->ID_Staff = $ID_Staff;
             $this->Condition = $Condition;
             $this->Conform = $Conform;
    }
    public static function get($id)
    {
            require("connection_connect.php");
            $sql = "SELECT * FROM customer_order WHERE id_order='$id' ";
            $result = $conn->query($sql);
            $my_row = $result->fetch_assoc();
            $id = $my_row[id_order];
            $date = $my_row[date];
            $ID_Customer = $my_row[id_cus];
            $ID_Staff = $my_row[Staff_id];
            $Condition = $my_row[condition];
            $Conform = $my_row[เงื่อนไข];
            require("connection_close.php");
            return new Order($id,$date,$ID_Customer,$ID_Staff,$Condition,$Conform);
    }
    public static function getAll()
    {
            $OrderList = [];
            require("connection_connect.php");
            $sql="SELECT * FROM customer_order";
            $result=$conn->query($sql);
            while($my_row = $result->fetch_assoc())
            {
                $id = $my_row[id_order];
                $date = $my_row[date];
                $ID_Customer = $my_row[id_cus];
                $ID_Staff = $my_row[Staff_id];
                $Condition = $my_row[condition];
                $Conform = $my_row[เงื่อนไข];
                $OrderList[] = new Order($id,$date,$ID_Customer,$ID_Staff,$Condition,$Conform);                
            }
            require("connection_close.php");

            return $OrderList;
    }
    

}?>
