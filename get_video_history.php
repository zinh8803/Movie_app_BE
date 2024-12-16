<?php
session_start();
$hostname = "localhost";
$user = "root";
$pass = "";
$data = "movie_app";

$con = mysqli_connect($hostname, $user, $pass, $data);

if (isset($_POST['user_id'])) {
    $user_id = mysqli_real_escape_string($con, $_POST['user_id']);

    $query = "SELECT * FROM video_history WHERE user_id='$user_id' ORDER BY timestamp DESC";
    $result = mysqli_query($con, $query);

    $history = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $history[] = $row;
    }

    echo json_encode($history, JSON_PRETTY_PRINT);
} else {
    echo json_encode([]);
}
?>
