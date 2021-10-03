
<?php

class product

{

    public $p_id,$p_type;



    public function __construct($p_id,$p_type)

    {

        $this->p_id = $p_id;

        $this->p_type = $p_type;

    }



    public static function getAll()

    {
    

        $productList = [];

        require("connect_database.php");

        $sql = "SELECT * FROM Product";

        $result = $conn->query($sql);

        while ($my_row = $result->fetch_assoc()) {

            $p_id= $my_row[p_id];

            $p_type = $my_row[p_type];

            $productList[] = new product($p_id,$p_type);

        }

        require("connection_close.php");

        return $productList;

    }

}
