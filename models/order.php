
<?php class Order{
     public $id_order;
     public $date;
     public $condition;
     public $id_cus;
     public $Staff_id;
     public $เงื่อนไข;
     public $c_Fname;


    public function __construct($id_order,$date,$condition,$c_Fname,$id_cus,$Staff_id,$เงื่อนไข)
    {
        $this->id_order = $id_order;
        $this->date = $date;
        $this->condition = $condition;
        $this->id_cus = $id_cus;
        $this->Staff_id = $Staff_id;
        $this->เงื่อนไข = $เงื่อนไข;
        $this->c_Fname = $c_Fname;

    }
    public static function getAll()
    {
        $orderList=[];
        require("connect_database.php");
        $sql="SELECT * FROM customer_order INNER JOIN customer ON customer.c_id = customer_order.id_cus INNER JOIN staff ON customer_order.Staff_id=staff.s_id ";
        $result=$conn->query($sql);
        while($my_row=$result->fetch_assoc())
        {
            $id_order = $my_row[id_order];
            $date = $my_row[date];
            $condition = $my_row[condition ];
            $id_cus = $my_row[id_cus];
            $Staff_id = $my_row[Staff_id];
            $เงื่อนไข = $my_row[เงื่อนไข];
            $c_Fname = $my_row[c_Fname];
            
            $orderList[] = new Order($id_order,$date,$condition,$c_Fname,$id_cus,$Staff_id,$เงื่อนไข);
        }
        require("connection_close.php");
        return $orderList;

    }
    public static function Add($id_order,$date,$condition,$id_cus,$Staff_id,$เงื่อนไข)

    { 

       require("connect_database.php");

      

       $sql = "INSERT INTO `customer_order` (`id_order`, `date`, `condition`, `id_cus`, `Staff_id`, `เงื่อนไข`) VALUES ('$id_order', '$date', '$condition', '$id_cus', '$Staff_id', '$เงื่อนไข')";

       $result = $conn->query($sql);

       require("connection_close.php");

       return  ;

    }

    public static function search($key)
    {
        $orderList=[];
        require("connect_database.php");
        $sql="SELECT * FROM customer_order  WHERE ( id_order like '%$key%' or id_cus like '%$key%' or Staff_id like '%$key%' )";
        $result=$conn->query($sql);
        while($my_row=$result->fetch_assoc())
        {
            $id_order = $my_row[id_order];
            $date = $my_row[date];
            $condition = $my_row[condition];
            $id_cus = $my_row[id_cus];
            $Staff_id = $my_row[Staff_id];
            $เงื่อนไข = $my_row[เงื่อนไข];
            $c_Fname = $my_row[c_Fname];

            $orderList[] = new Order($id_order,$date,$condition,$c_Fname,$id_cus,$Staff_id,$เงื่อนไข);
        }
        require("connection_close.php");
        return $orderList;
    }


    public static function get($id)
    {
        
        require("connect_database.php");
        $sql="SELECT * FROM customer_order  INNER JOIN customer ON customer.c_id = customer_order.id_cus INNER JOIN staff ON customer_order.Staff_id=staff.s_id WHERE id_order='$id'";
        $result=$conn->query($sql);
        $my_row=$result->fetch_assoc();
        
        
            $id_order = $my_row[id_order];
            $date = $my_row[date];
            $condition = $my_row[condition ];
            $id_cus = $my_row[id_cus];
            $Staff_id = $my_row[Staff_id];
            $เงื่อนไข = $my_row[เงื่อนไข];
            $c_Fname = $my_row[c_Fname];
            
           
        
        require("connection_close.php");
        return new Order($id_order,$date,$condition,$c_Fname,$id_cus,$Staff_id,$เงื่อนไข);

    }


    public static function Update($id_order,$date,$c_id,$s_id,$condition,$เงื่อนไข,$oldid)
     {
        require("connect_database.php");
        $sql="UPDATE `quotation` SET `id_order`='$id_order',`date`='$date',
        `c_id`='$c_id',`s_id`='$s_id',`condition`='$condition',`เงื่อนไข`='$เงื่อนไข' WHERE id_order = '$oldid'";
        $result=$conn->query($sql);
        require("connection_close.php");
        return ;
     }
    public static function delete($id)

    {

        require("connect_database.php");

        $sql = "DELETE FROM customer_order WHERE id_order = '$id'";

        $result = $conn->query($sql);

        require("connection_close.php");

        return ;

    }






}

