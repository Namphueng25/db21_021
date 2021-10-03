
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<center><font size = "6" >
<body><form method="GET" action="">
<label>รหัส <input type="text" name="id_order" 
        value="<?php echo $order->id_order;?>"/></label><br>


<label>วันที่ <input type="date" name="date"
        value="<?php echo $order->date;?>"/></label><br>

<label>ชื่อลูกค้า <select name="c_id">
    <?php foreach($customerList as $c) {
        echo "<option value = $c->c_id";
        if($c->c_id==$order->c_id){echo " selected='selected'";}
         echo ">$c->c_id</option>";}?>
    </select></label><br> 
    
<label>รหัสพนักงาน <select name="s_id">
    <?php foreach($staffList as $s) {
        echo "<option value = $s->s_id";
        if($s->s_id==$order->s_id){echo " selected='selected'";}
         echo ">$s->s_id</option>";}?>
    </select></label><br>

<label>เงื่อนไขชำระ <input type="text" name="เงื่อนไข"
        value="<?php echo $order->เงื่อนไข;?>"/></label><br>

<label>เปอร์เซ็นต์มัดจำ   <input type="number" name="condition"
        value="<?php echo $order->condition;?>"/></label><br>


<input type="hidden"name="controller"value="order"/>
<input type="hidden" name="oldid" value="<?php echo $order->id_order; ?>"/>
<button type= "submit"name="action"value="index">Back</button>
<button type= "submit"name="action"value="update">Update</button>

</form></body></font></center>
