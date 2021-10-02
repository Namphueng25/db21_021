<?php echo "<br> คุณแน่ใจนะคะว่าคุณจะลบใบเสนอราคา? (>*<) <br>

            <br> $order->id_order $order->c_Fname <br>"; ?>



<form method="get" action="">



    <input type="hidden" name="controller" value="order" />

    <input type="hidden" name="id_order" value="<?php echo $order->id_order; ?>" />

    <button type="submit" name="action" value="index">back</button>

    <button type="submit" name="action" value="delete">delete</button>

    



</form>
