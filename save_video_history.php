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
if (isset($_POST['user_id']) && isset($_POST['video_id']) && isset($_POST['video_title']) && 
isset($_POST['thumbnail_url'])) {
    $user_id = mysqli_real_escape_string($con, $_POST['user_id']);
    $video_id = mysqli_real_escape_string($con, $_POST['video_id']);
    $video_title = mysqli_real_escape_string($con, $_POST['video_title']);
    $thumbnail_url = mysqli_real_escape_string($con, $_POST['thumbnail_url']);
    $query = "INSERT INTO video_history (user_id, video_id, video_title, thumbnail_url) 
              VALUES ('$user_id', '$video_id', '$video_title', '$thumbnail_url')";
    if (mysqli_query($con, $query)) {
        echo "1"; 
    } else {
        echo "0"; 
    }
} else {
    echo "0"; 
}
?>
