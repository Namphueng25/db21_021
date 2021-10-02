
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
        require("connect_database.php");
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
    public static function get($id)
    {
        require("connection_connect.php");
        $sql="SELECT * FROM quotation NATURAL JOIN employee NATURAL JOIN customer WHERE Q_ID='$id' and CUS_ID = CUS_ID";
        $result=$conn->query($sql);
        $my_row=$result->fetch_assoc();
        $q_id = $my_row[Q_ID];
        $date = $my_row[Q_DATE];
        $cus_name = $my_row[CUS_Name];
        $emp_name = $my_row[EMP_Name];
        $cus_add = $my_row[CUS_Add];
        $cus_tel = $my_row[CUS_Tel];

        $cus_id = $my_row[CUS_ID];
        $emp_id = $my_row[EMP_ID];
        $q_cdt = $my_row[Q_CDT];
        $q_deposit = $my_row[Q_deposit];
        require("connection_close.php");
        return new Quotation($q_id,$date,$cus_name,$emp_name,$cus_add,$cus_tel,$cus_id,$emp_id,$q_cdt,$q_deposit);

    }
    public static function search($key)
    {
        require("connect_database.php");
        $sql="SELECT * FROM customer_order  WHERE (id_order like '%$key%' or Staff_id like '%$key%' or condition like '%$key%' or id_cus like '%$key%')and CUS_ID=CUS_ID";
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
    public static function Update($qid,$date,$idcus,$idemp,$qcdt,$qdeposit,$oldid)
     {
        require("connection_connect.php");
        $sql="UPDATE `quotation` SET `Q_ID`='$qid',`Q_DATE`='$date',
        `EMP_ID`='$idemp',`CUS_ID`='$idcus',`Q_CDT`='$qcdt',`Q_deposit`='$qdeposit' WHERE Q_ID = '$oldid'";
        $result=$conn->query($sql);
        require("connection_close.php");
        return ;
     }

     public static function delete($id)
     {
         require("connection_connect.php");
         $sql = "DELETE FROM quotation WHERE Q_ID = '$id'";
         $result = $conn->query($sql);
         require("connection_close.php");
         return ;
     }





}

?>