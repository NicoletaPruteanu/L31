<?php

$servername="localhost";
$username="root";
$password="";
$db="electronix";

$conn=mysqli_connect($servername,$username,$password,$db);

if (!$conn) {
    die("Connection failed:" . mysqli_connect_error());
}

function count_brands($id){
    global $con;
    $count_ob="select count(prd_id) from products where prd_brand=$id";
    $brands_run=mysqli_query($con,$count_ob);
    $row_brands=mysqli_fetch_array($brands_run);
    $num=$row_brands["count (prd_id)"];
    return $num;
}
?>