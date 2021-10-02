<form method = "GET" action = "">

    <label>เลขใบสั่งซื้อ  <input type="text" name="id"/></label><br>

    <label>วันที่ทำการสั่งซื้อ  <input type="date" name="date" value="<?php echo date("Y-m-d");?>"/></label><br>
    
    <label>รหัสพนักงาน   <select name="s_id">
    <?php foreach($staff_List as $s)
    {
        echo "<option value=$s->id > $s->id</option>";
    }?>
    </select></label><br>

    <label>รหัสลูกค้า  <select name="c_id">
    <?php foreach($customer_id as $c)
    {
        echo "<option value=$c->id > $c->id</option>";
    }?>
    </select></label><br>

    <label>เการรออนุมัติ  <input type="text" name="เงื่อนไข"/></label><br>
    
    <label>เปอร์เซ็นต์มัดจำ   <input type="number" name="condition"/></label><br>

    <input type="hidden" name="controller" value="order"/><br>
    <button type="submit" name="action" value="index">Back</button>
    <button type="submit" name="action" value="addOrder">Save</button>
</form>

