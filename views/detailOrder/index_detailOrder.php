<table border=1>
new detailOrder <a href=?controller=detailOrder&action=newdetailOrder> click</a><br>
<tr><td>date</td>
    <td>con_payment</td>
    <td>เงื่อนไข</td>
    <td>stock_id1</td>
    <td>n_staff</td>
    <td>n_customer</td>
    <td>n_pid</td>
    <td>n_pcolor</td>
    <td>n_pจำนวน</td>
    <td>n_pscreen</td>
    <td>no1</td></tr>
<?php foreach($detailOrder_List as $detailOrder)
{
        echo "<tr><td>$detailOrder->date</td>
        <td>$detailOrder->con_payment</td>
        <td>$detailOrder->เงื่อนไข</td>
        <td>$detailOrder->stock_id1</td>
        <td>$detailOrder->n_staff</td>
        <td>$detailOrder->n_customer</td>
        <td>$detailOrder->n_pid</td>
        <td>$detailOrder->n_pcolor</td>
        <td>$detailOrder->n_pจำนวน</td>
        <td>$detailOrder->n_pscreen</td>
        <td>$detailOrder->no1</td>
        <td>update</td><td>delete</td></tr>";
}
echo "</table>";
?>

