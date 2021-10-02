<?php class staff{
    public $s_id,$s_name,$s_rank,$s_password;
    public function __construct($s_id,$s_name,$s_rank,$s_password)
    {
        $this->s_id, =$s_id;
        $this->s_name=$s_name;
        $this->s_rank=$s_rank;
        $this->s_password=$s_password;
    }
    public static function getAll()
    {
        $staffList=[];
        require("connect_database.php");
        $sql="SELECT * FROM staff";
        $result = $conn->query($sql);
       while($my_row = $result->fetch_assoc()){
            $s_id=$my_row[s_id];
            $s_name=$my_row[s_name];
            $s_rank=$my_row[s_rank];
            $s_password=$my_row[s_password];
            $staffList[] = new staff($s_id,$s_name,$s_rank,$s_password);   
        }
        require("connection_close.php");
        return $staffList;
    }
        
}

