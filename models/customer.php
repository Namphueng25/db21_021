<?php

class customer

{

    public $c_id,$s_name;



    public function __construct($c_id,$c_Fname)

    {

        $this->c_id = $c_id;

        $this->c_Fname = $c_Fname;

    }



    public static function getAll()

    {
    

        $customerList = [];

        require("connect_database.php");

        $sql = "SELECT * FROM customer";

        $result = $conn->query($sql);

        while ($my_row = $result->fetch_assoc()) {

            $c_id= $my_row[c_id];

            $c_Fname = $my_row[c_Fname];

            $customerList[] = new customer($c_id,$c_Fname);

        }

        require("connection_close.php");

        return $customerList;

    }

}
