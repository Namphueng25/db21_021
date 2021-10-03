<ceter><form method="get" action="">
<label>date <input type="date" name="date"
        value="<?php echo $detailOrder->date;?>"/></label><br>

<label>รหัสใบเสนอราคา <select name="id_order">
    <?php foreach($orderList as $o) {
        echo "<option value = $o->id";
        if($o->id==$detailOrder->no1){echo " selected='selected'";}
         echo ">$o->name</option>";}
    ?>
    </select></label><br> 

<label>รหัสสินค้า <input type="text" name="n_pid"
        value="<?php echo $detailOrder->n_pid;?>"/></label><br>

<label>เงื่อนไขชำระ <input type="text" name="เงื่อนไข"
        value="<?php echo $detailOrder->เงื่อนไข;?>"/></label><br>

<label>%มัดจำ(เครดิตเป็น0) <input type="text" name="con_payment"
        value="<?php echo $detailOrder->con_payment;?>"/></label><br>

<label>รหัสพนักงาน <select name="s_id">
    <?php foreach($staffList as $s) {
        echo "<option value = $s->id";
        if($s->id==$detailOrder->n_staff){echo " selected='selected'";}
         echo ">$s->name</option>";}
    ?>
    </select></label><br> 
<label>รหัสลูกค้า <select name="c_id">
    <?php foreach($customerList as $c) {
        echo "<option value = $c->id";
        if($c->id==$detailOrder->n_customer){echo " selected='selected'";}
         echo ">$c->name</option>";}
    ?>
    </select></label><br> 


<input type="hidden"name="controller"value="detailOrder"/>

<button type= "submit"name="action"value="index">back</button>
<button type= "submit"name="action"value="update">update</button>

</form>