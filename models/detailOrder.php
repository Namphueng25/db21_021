<?php class detailOrder{
     public $date;
     public $con_payment;
     public $เงื่อนไข;
     public $stock_id1;
     public $n_staff;
     public $n_customer;
     public $n_pid;
     public $n_pcolor;
     public $n_pจำนวน;
     public $n_pscreen;
     public $no1;

     public function __construct($date,$con_payment,$เงื่อนไข,$stock_id1,$n_staff,$n_customer,$n_pid,$n_pcolor,$n_pจำนวน,$n_pscreen,$no1)
    {
        $this->date = $date;
        $this->con_payment = $con_payment;
        $this->เงื่อนไข = $เงื่อนไข;
        $this->stock_id1 = $stock_id1;
        $this->n_staff = $n_staff;
        $this->n_customer = $n_customer;
        $this->n_pid = $n_pid;
        $this->n_pcolor = $n_pcolor;
        $this->n_pจำนวน = $n_pจำนวน;
        $this->n_pscreen = $n_pscreen;
        $this->no1 = $no1;
    }
    public static function getAll()
    {
        $orderList=[];
        require("connect_database.php");
        $sql="SELECT * FROM ใบเสนอ ";
        $result=$conn->query($sql);
        while($my_row=$result->fetch_assoc())
        {
            $date = $my_row[date];
            $con_payment = $my_row[con_payment];
            $เงื่อนไข = $my_row[เงื่อนไข];
            $stock_id1 = $my_row[stock_id1 ];
            $n_staff = $my_row[n_staff];
            $n_customer = $my_row[n_customer];
            $n_pid = $my_row[n_pid];
            $n_pcolor = $my_row[n_pcolor ];
            $n_pจำนวน = $my_row[n_pจำนวน];
            $n_pscreen = $my_row[n_pscreen];
            $no1 = $my_row[no1];

            $detailOrderList[] = new detailOrder($date,$con_payment,$เงื่อนไข,$stock_id1,$n_staff,$n_customer,$n_pid,$n_pcolor,$n_pจำนวน,$n_pscreen,$no1);
        }
        require("connection_close.php");
        return $detailOrderList;

    }
    public static function search($key)
    {
        require("connect_database.php");
        $sql="SELECT * FROM ใบเสนอ  WHERE ( stock_id1 like '%$key%' or n_staff like '%$key%' or n_customer like '%$key%' or n_pid like '%$key%' or no1 like '%$key%')and CUS_ID=CUS_ID";
        $result=$conn->query($sql);
        while($my_row=$result->fetch_assoc())
        {
            $date = $my_row[date];
            $con_payment = $my_row[con_payment];
            $เงื่อนไข = $my_row[เงื่อนไข];
            $stock_id1 = $my_row[stock_id1 ];
            $n_staff = $my_row[n_staff];
            $n_customer = $my_row[n_customer];
            $n_pid = $my_row[n_pid];
            $n_pcolor = $my_row[n_pcolor ];
            $n_pจำนวน = $my_row[n_pจำนวน];
            $n_pscreen = $my_row[n_pscreen];
            $no1 = $my_row[no1];

            $detailOrder_List[] = new detailOrder($date,$con_payment,$เงื่อนไข,$stock_id1,$n_staff,$n_customer,$n_pid,$n_pcolor,$n_pจำนวน,$n_pscreen,$no1);
        }
        require("connection_close.php");
        return $detailOrder_List;

    }
}

