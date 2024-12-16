<?php 
$hostname = "localhost"; 
$user = "root";          
$pass = "";              
$data = "movie_app";     
$con = mysqli_connect($hostname, $user, $pass, $data);
$User = $_POST['username'];
$Email = $_POST['email'];
$Password = $_POST['password'];
if(strlen($User) > 0 && strlen($Email) > 0 && strlen($Password) >= 6) {
    $query = "SELECT * FROM user WHERE username='$User'";
    $result = mysqli_query($con, $query);
    if (mysqli_num_rows($result) == 0) {
        $query = "INSERT INTO user (username, email, password) VALUES ('$User', '$Email', '$Password')";
        $data = mysqli_query($con, $query);
        echo $data ? "1" : "0"; 
    } else {
        echo "3"; 
    }
} else {
    echo "2"; 
}
?>
