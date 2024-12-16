<?php
session_start();
$hostname = "localhost";
$username = "root";
$password = "";
$database = "movie_app";

$con = mysqli_connect($hostname, $username, $password, $database);

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $userId = $_GET['user_id']; 
    if (!$con) {
        echo json_encode(["status" => "error", "message" => "Kết nối database thất bại"]);
        exit;
    }
    $query = "SELECT username, email, password, phone, gender, avatar FROM user WHERE Id='$userId'";
    $result = mysqli_query($con, $query);
    if (mysqli_num_rows($result) > 0) {
        $user = mysqli_fetch_assoc($result);
        echo json_encode($user); 
    } else {
        echo json_encode(["status" => "error", "message" => "Người dùng không tồn tại"]);
    }
} else {
    echo json_encode(["status" => "error", "message" => "Yêu cầu không hợp lệ"]);
}
?>
