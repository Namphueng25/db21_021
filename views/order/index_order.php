<table border = 1>

<tr>
<td>id</td>
<td>date</td>
<td>ID_Customer</td>
<td>ID_Staff</td>
<td>Condition</td>
<td>Conform</td>
</tr>
<?php foreach($order_list as $order)
{
        echo "<tr>
        <td>$order->id</td>
        <td>$order->date</td>
        <td>$order->ID_Customer</td>
        <td>$order->ID_Staff</td>
        <td>$order->Condition</td>
        <td>$order->Conform</td>

        </tr>";
}
echo "</table>";
?>






