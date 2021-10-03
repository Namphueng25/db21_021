
<?php

class colorproduct

{

    public $cp_color,$cp_code;



    public function __construct($cp_color,$cp_code)

    {

        $this->cp_color = $cp_color;

        $this->cp_code = $cp_code;

    }



    public static function getAll()

    {
    

        $colorproductList = [];

        require("connect_database.php");

        $sql = "SELECT * FROM ColorProduct";

        $result = $conn->query($sql);

        while ($my_row = $result->fetch_assoc()) {

            $cp_color= $my_row[cp_color];

            $cp_code = $my_row[cp_code];

            $colorproductList[] = new colorproduct($cp_color,$cp_code);

        }

        require("connection_close.php");

        return $colorproductList;

    }

}
