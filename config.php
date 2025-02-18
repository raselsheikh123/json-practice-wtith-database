<?php
$conn = mysqli_connect("localhost", "root", "", "json_practice") or die('Connection Error');
$search_value = $_POST["searchVal"] ?? "";
if($search_value != "" ){
    $sql = "SELECT * FROM ajax WHERE name LIKE '%".$search_value."%'";
}else{
    $sql = "SELECT * FROM ajax";
}

$result = mysqli_query($conn, $sql) or die('Query Error');
$data_arr = mysqli_fetch_all($result, MYSQLI_ASSOC);

echo json_encode($data_arr);




mysqli_close($conn);