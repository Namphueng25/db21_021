
<?php class customer{
    public $c_id,$c_Fname,$c_address,$c_phone;
    public function __construct($c_id,$c_Fname,$c_address,$c_phone)
    {
        $this->c_id =$c_id
        $this->c_Fname=$c_Fname;
        $this->c_address=$c_address;
        $this->c_phone=$c_phone;
    }
    public static function getAll()
    {
        $customerList=[];
        require("connect_database.php");
        $sql="SELECT * FROM customer";
        $result = $conn->query($sql);
       while($my_row = $result->fetch_assoc()){
            $c_id=$my_row[c_id];
            $c_Fname=$my_row[c_Fname];
            $c_address=$my_row[c_address];
            $c_phone=$my_row[c_phone];
            $customerList[] = new customer($c_id,$c_Fname,$c_address,$c_phone);
    
        }
        require("connection_close.php");
        return $customerList;
    }
        
}