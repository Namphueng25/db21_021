<form method="get" action="">
<label>รหัส <input type="text" name="id_order" 
        value="<?php echo $order->id_order;?>"/></label><br>
<label>วันที่ <input type="date" name="date"
        value="<?php echo $order->date;?>"/></label><br>

<label>เปอร์เซนต์ค่ามัดจำ <input type="text" name="condition" 
        value="<?php echo $order->condition;?>"/></label><br>


 <br><label>ชื่อลูกค้า <select name="c_id">
    <?php foreach($customerList as $C) {echo "<option value = $C->c_id>
    $C->c_Fname</option>";}
    ?>
    </select></label><br>
    
<label>ชื่อพนักงาน <select name="s_id">
    <?php foreach($staffList as $s) {
        echo "<option value = $s->id";
        if($s->id==$order->s_id){echo " selected='selected'";}
         echo ">$s->name</option>";}
    ?>
    </select></label><br>

<label>เงื่อนไขชำระ <input type="text" name="เงื่อนไข"
        value="<?php echo $order->เงื่อนไข;?>"/></label><br>



<input type="hidden"name="controller"value="order"/>
<button type= "submit"name="action"value="index">Back</button>
<button type= "submit"name="action"value="update">update</button>

</form>

