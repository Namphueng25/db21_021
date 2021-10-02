<?php

class staff

{

    public $s_id,$s_name;



    public function __construct($s_id,$s_name)

    {

        $this->s_id = $s_id;

        $this->s_name = $s_name;

    }



    public static function getAll()

    {
    

        $staffList = [];

        require("connect_database.php");

        $sql = "SELECT * FROM staff";

        $result = $conn->query($sql);

        while ($my_row = $result->fetch_assoc()) {

            $s_id= $my_row[s_id];

            $s_name = $my_row[s_name];

            $staffList[] = new staff($s_id,$s_name);

        }

        require("connection_close.php");

        return $staffList;

    }

}
