<table border = 1>

<tr><td>id_order</td>
<td>date</td>
<td>condition</td>
<td>id_cus</td>
<td>Staff_id</td>
<td>เงื่อนไข</td></tr>
<?php foreach($order_List as $order)
{
        echo "<tr><td>$order->id_order</td><td>$order->date</td>
        <td>$order->condition</td>
        <td>$order->id_cus</td>
        <td>$order->Staff_id</td>
        <td>$order->เงื่อนไข</td>
        </tr>";
}
echo "</table>";
?>






