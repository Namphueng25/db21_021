<form method = "GET" action = "">
    <label>วันที่ทำการสั่งซื้อ  <input type="date" name="date" value="<?php echo date("Y-m-d");?>"/></label><br>

    <label>เปอร์เซ็นต์มัดจำ   <input type="number" name="con_payment"/></label><br>

    <label>เงื่อนไข   <input type="text" name="เงื่อนไข"/></label><br>

    <label>รหัสstock  <input type="text" name="stock_id1"/></label><br>

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
    
    <label>รหัสสินค้า  <select name="p_id">
    <?php foreach($productList as $p)
    {
        echo "<option value=$p->p_id >$p->p_id</option>";
    }?>
    </select></label><br>

    <label>สี  <select name="cp_color">
    <?php foreach($colorproductList as $co)
    {
        echo "<option value=$co->cp_color >$co->cp_color</option>";
    }?>
    </select></label><br>

    <label>จำนวน  <input type="number" name="n_pจำนวน"/></label><br>
    
    <label>จำนวนสกีน  <input type="number" name="n_pscreen"/></label><br>

    <label>รหัสใบเสนอราคา  <input type="number" name="no1"/></label><br>

    <input type="hidden" name="controller" value="detailOrder"/><br>
    <button type="submit" name="action" value="index">Back</button>
    <button type="submit" name="action" value="addOrder">Save</button>
</form>


