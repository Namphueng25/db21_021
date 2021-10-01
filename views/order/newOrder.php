
<form method="get" action="">
<label>รหัส <input type="text" name="id_order"/></label><br>
<label>วันที่ <input type="text" name="date"/></label><br>
<label>ชื่อพนักงาน <select name="s_name">
    <?php foreach($staff_List as $sta)
     {
         echo "<option value = $sta->s_id>$sta->s_name</option>";
     }
    ?>
    </select></label><br>

<label>ชื่อลูกค้า <select name="c_Fname">
    <?php foreach($customer_List as $cus) 
    {
        echo "<option value = $cus->c_id>$cus->c_Fname</option>"; 

    }
    ?>
</select></label><br>


<input type="hidden"name="controller"value="order"/>
<button type= "submit"name="action"value="index">back</button>
<button type= "submit"name="action"value="addOrder">Save</button>


