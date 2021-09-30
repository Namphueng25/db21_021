<?php
$controllers = array('pages'=>['home','error'],'order'=>['index']);

function call($controllers,$action){
           echo "<br/>";
           require_once("./controllers/".$controller."_controller.php");
           switch($controller)
           {
                case "pages":  $controller  = new PagesController();
                                break;
                
                case "order":  require_once("./models/OrderModel.php");
                                $controller = new OrderController();
                                break; 

           }
           $controller->{$action}();
}
if(array_key_exists($controller,$controllers))
{
    if(in_array($action,$controllers[$controller]))
        call($controller,$action);
     else
        call('pages','error');
    
}
else 
{
    call('pages','error');
}
?>