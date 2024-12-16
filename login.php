<?php 
session_start(); 
$hostname = "localhost"; 
$user = "root";          
$pass = "";              
$data = "movie_app";     

$con = mysqli_connect($hostname, $user, $pass, $data);

$User = $_POST['username'];
$Password = $_POST['password'];

if(strlen($User) > 0 && strlen($Password) > 0) {
    // Kiểm tra tài khoản và mật khẩu trong cơ sở dữ liệu
    $query = "SELECT * FROM user WHERE username='$User' AND password='$Password'";
    $result = mysqli_query($con, $query);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $user_id = $row['Id'];
        // Lưu user_id vào session
        $_SESSION['user_id'] = $user_id;
        
        echo json_encode(["status" => 1, "user_id" => $user_id]); 
    } else {
        echo json_encode(["status" => 2]); 
    }
} else {
    echo json_encode(["status" => 0]); 
}
?>
