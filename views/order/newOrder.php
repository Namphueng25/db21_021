<center><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUO6ad442Z5ebYopUDS4w_gtSQaP5f4s-tUNuqHZSe_2h7ePuYXrRLH_fOLyK21mboiHY&usqp=CAU"   ></center>
<center><font size = "5">
<form method = "GET" action = "">

    <label>เลขใบสั่งซื้อ  <input type="text" name="id"/></label><br>

    <label>วันที่ทำการสั่งซื้อ  <input type="date" name="date" value="<?php echo date("Y-m-d");?>"/></label><br>
    
    <label>รหัสพนักงาน   <select name="s_id">
    <?php foreach($staffList as $s)
    {
        echo "<option value=$s->s_id > $s->s_id</option>";
    }?>
    </select></label><br>

    <label>รหัสลูกค้า  <select name="c_id">
    <?php foreach($customerList as $c)
    {
        echo "<option value=$c->c_id >$c->c_id</option>";
    }?>
    </select></label><br>
    

    <label>การรออนุมัติ  <input type="text" name="เงื่อนไข"/></label><br>
    
    <label>เปอร์เซ็นต์มัดจำ   <input type="number" name="condition"/></label><br>

    <input type="hidden" name="controller" value="order"/><br>
    <button type="submit" name="action" value="index">Back</button>
    <button type="submit" name="action" value="addOrder">Save</button>
</form></center>

