<?php echo "<br> คุณแน่ใจนะคะว่าคุณจะลบใบเสนอราคา? (>*<) <br>

            <br> $detailOrder->n_pid $detailOrder->no1 <br>"; ?>



<form method="get" action="">



    <input type="hidden" name="controller" value="detailOrder" />

    <input type="hidden" name="no_id" value="<?php echo $detailOrder->no_id; ?>" />

    <button type="submit" name="action" value="index">back</button>

    <button type="submit" name="action" value="delete">delete</button>

    



</form>

