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

tr:nth-child(even){background-color: #F0F8FF}
tr:hover {background-color: #CCCCFF}
th {
    background-color: #CC99FF;
    color: white;
}
</style>

<style>
.button {
    background-color: #CC99FF;
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
<body bgcolor = "#F0F8FF"><center>

<h2><center>ORDER TABLE</center></h2>

<table border=1>
new detailOrder <a href=?controller=detailOrder&action=newdetailOrder> click</a><br>

<form method="get" action="">
        <input type="text" name="key">
        <input type="hidden" name="controller" value="detailOrder" >
        <button type="submit" name="action" value="search"> Search </button>
    </form>

<tr><th>date</th>
    <th>con_payment</th>
    <th>เงื่อนไข</th>
    <th>stock_id1</th>
    <th>n_staff</th>
    <th>n_customer</th>
    <th>n_pid</th>
    <th>n_pcolor</th>
    <th>n_pจำนวน</th>
    <th>n_pscreen</th>
    <th>no1</th>
    <th>UPDATE</th>
    <th>DELETE</th></tr>
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
        <td><a href=?controller=detailOrder&action=updateForm&no_id=$detailOrder->no_id>update</a></td>
        <td><a href=?controller=detailOrder&action=deleteConFirm&no_id=$detailOrder->no_id>delete</a></td>
        </tr>"; 
}
?>
<br>
</center>





</body>
<br>
<br>
<center><font size = "4" color = "black">BY น.ส.รสริน 6220504763 </font></center>
</html>