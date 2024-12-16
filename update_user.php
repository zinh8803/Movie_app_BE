<?php
session_start();
$hostname = "localhost";
$username = "root";
$password = "";
$database = "movie_app";

$con = mysqli_connect($hostname, $username, $password, $database);

if (!$con) {
    echo json_encode(["status" => "error", "message" => "Kết nối cơ sở dữ liệu thất bại"]);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userId = $_POST['user_id'];
    $password = $_POST['password'];
    $phone = $_POST['phone'];
    $gender = $_POST['gender'];

    $query = "UPDATE user SET password='$password', phone='$phone', gender='$gender' WHERE Id='$userId'";
    if (mysqli_query($con, $query)) {
        echo json_encode(["status" => "success", "message" => "Cập nhật thông tin thành công"]);
    } else {
        echo json_encode(["status" => "error", "message" => "Cập nhật thông tin thất bại"]);
    }
} else {
    echo json_encode(["status" => "error", "message" => "Phương thức không hợp lệ"]);
}
?>
