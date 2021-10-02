<?php
$controllers = array('pages'=>['home','error'],'order'=>['index','newOrder','search'],'detailOrder'=>['index','search','update','updateForm']);

function call($controller,$action){
    require_once("./controllers/".$controller."_controller.php");
    
    switch($controller)
    {
        case "pages":    $controller = new PagesController();
                        break;

        case "order":   require_once("./models/order.php");
                   
                        $controller = new OrderController();
                        break;
                        
        case "detailOrder":   require_once("./models/detailOrder.php");
                   
                        $controller = new detailOrderController();
                        break;


    }
    $controller->{$action}();

}
if(array_key_exists($controller,$controllers)){

    if(in_array($action,$controllers[$controller]))

        call($controller,$action);

    else

        call('pages','error');

}

else{

    call('pages','error');

}

