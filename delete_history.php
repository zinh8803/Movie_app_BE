<?php
session_start();
$hostname = "localhost";
$user = "root";
$pass = "";
$data = "movie_app";

$con = mysqli_connect($hostname, $user, $pass, $data);
if (!$con) {
    die("Lỗi kết nối: " . mysqli_connect_error());
}
if (isset($_POST['user_id']) && isset($_POST['video_id'])) {
    $user_id = mysqli_real_escape_string($con, $_POST['user_id']);
    $video_id = mysqli_real_escape_string($con, $_POST['video_id']);
    $query = "DELETE FROM video_history WHERE user_id = '$user_id' AND video_id = '$video_id'";
    
    if (mysqli_query($con, $query)) {
        echo json_encode([
            "success" => true,
            "message" => "Video đã được xóa khỏi lịch sử."
        ]);
    } else {
        echo json_encode([
            "success" => false,
            "message" => "Lỗi khi xóa video: " . mysqli_error($con)
        ]);
    }
} else {
    echo json_encode([
        "success" => false,
        "message" => "Dữ liệu không hợp lệ. Vui lòng cung cấp user_id và video_id."
    ]);
}
mysqli_close($con);
?>
