<ceter><form method="get" action="">
    <label>หมายเลขใบเสนอ   <input type="number" name="no_id"
        value="<?php echo $detailOrder->no_id;?>"/></label><br>

    <label>วันที่ทำการสั่งซื้อ  <input type="date" name="date" 
        value="<?php echo date("Y-m-d");?>"/></label><br>

    <label>เปอร์เซ็นต์มัดจำ   <input type="number" name="con_payment"
    value="<?php echo $detailOrder->con_payment;?>"/></label><br>

    <label>เงื่อนไข   <input type="text" name="เงื่อนไข"
    value="<?php echo $detailOrder->เงื่อนไข;?>"/></label><br>

    <label>รหัสstock  <input type="text" name="stock_id1"
    value="<?php echo $detailOrder->stock_id1;?>"/></label><br>

    <label>รหัสพนักงาน <select name="s_id">
    <?php foreach($staffList as $s) {
        echo "<option value = $s->s_id";
        if($s->s_id==$detailOrder->s_id){echo " selected='selected'";}
         echo ">$s->s_id</option>";}?>
    </select></label><br>

    <label>ชื่อลูกค้า <select name="c_id">
    <?php foreach($customerList as $c) {
        echo "<option value = $c->c_id";
        if($c->c_id==$detailOrder->c_id){echo " selected='selected'";}
         echo ">$c->c_id</option>";}?>
    </select></label><br> 
    
    <label>รหัสสินค้า <select name="p_id">
    <?php foreach($productList as $p) {
        echo "<option value = $p->p_id";
        if($p->p_id==$detailOrder->p_id){echo " selected='selected'";}
         echo ">$p->p_id</option>";}?>
    </select></label><br> 

    <label>สี <select name="cp_color">
    <?php foreach($colorproductList as $co) {
        echo "<option value = $p->cp_color";
        if($co->cp_color==$detailOrder->cp_color){echo " selected='selected'";}
         echo ">$co->cp_color</option>";}?>
    </select></label><br> 

    <label>จำนวน  <input type="number" name="n_pจำนวน"
    value="<?php echo $detailOrder->n_pจำนวน;?>"/></label><br>
    
    <label>จำนวนสกีน  <input type="number" name="n_pscreen"
    value="<?php echo $detailOrder->n_pscreen;?>"/></label><br>

    <label>รหัสใบเสนอราคา <select name="id_order">
    <?php foreach($orderList as $i) {
        echo "<option value = $i->id_order";
        if($i->id_order==$detailOrder->$no1){echo " selected='selected'";}
         echo ">$i->id_order</option>";}?>
    </select></label><br> 


    <input type="hidden"name="controller"value="detailOrder"/>
<input type="hidden" name="oldid" value="<?php echo $detailOrder->no_id; ?>"/>
<button type= "submit"name="action"value="index">Back</button>
<button type= "submit"name="action"value="update">Update</button>


</form>