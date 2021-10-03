<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 60%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>

<style>
.button {
    background-color: #4CAF50;
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
<body><center>

<h2><center>ORDER TABLE</center></h2>


<table border=1>


<form method="get" action="">
        <input type="text" name="key">
        <input type="hidden" name="controller" value="order" />
        <button type="submit" name="action" value="search"> Search </button></br>
    </form>
    

    <br><tr>
        <th>id_order</th>
        <th>date</th>
        <th>condition</th>
        <th>id_cus</th>
        <th>Staff_id</th>
        <th>เงื่อนไข</th>
        <th>Update</th>
        <th>Delete</th>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a class="button" href="?controller=order&action=newOrder">Addnew</a>



</body>
</html>
