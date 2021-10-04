<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    border : none;
    width: 70%;
}

th, td {
    text-align: center;
    padding: 8px;

}

tr:nth-child(even){background-color: #f2f2f2}
tr:hover {background-color: #ccffcc}
th {
    background-color: #33cc66;
    color: white;
}
</style>

<style>
.button {
    background-color: #33cc66;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>
<body bgcolor = "#f0fff0"><center>

<h2><center>ORDER TABLE</center></h2>


<table border=1 >


<form method="get" action="">
        <input type="text" name="key" size = "30">
        <input type="hidden" name="controller" value="order"  />
        <button type="submit" name="action" value="search"> Search </button>
        <button type="submit" name="action" value="index">Back</button></br>
    </form>
    

    <br><tr>
        <th>ID ORDER</th>
        <th>DATE</th>
        <th>CONDITION</th>
        <th>ID CUSTOMER</th>
        <th>ID STAFF</th>
        <th>เงื่อนไข</th>
        <th>UPDATE</th>
        <th>DELETE</th>
<?php foreach($order_List as $order)
{
        echo "<tr><td>$order->id_order</td>
        <td>$order->date</td>
        <td>$order->condition</td>
        <td>$order->id_cus</td>
        <td>$order->Staff_id</td>
        <td>$order->เงื่อนไข</td>
       
        <td><a href=?controller=order&action=updateForm&id_order=$order->id_order>Update</a></td>
        <td><a href=?controller=order&action=deleteConform&id_order=$order->id_order>Delete</a></td>
        
        </tr>";

}

echo "</table>";
?>
<br>
</center>

<center><a class="button" href="?controller=order&action=newOrder">Addnew</a></center>



</body>
<br>
<br>
<center><font size = "4" color = "black">BY น.ส.น้ำผึ้ง กิติกังสดาร 6220502159 </font></center>
</html>
