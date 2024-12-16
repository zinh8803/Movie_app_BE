<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_FILES['file']['name']) && isset($_POST['user_id'])) {
        $userId = $_POST['user_id'];
        $fileName = basename($_FILES['file']['name']);
        $targetDir = "uploads/";
        $targetFile = $targetDir . $fileName;

        if (move_uploaded_file($_FILES['file']['tmp_name'], $targetFile)) {
           
            $hostname = "localhost";
            $user = "root";
            $pass = "";
            $data = "movie_app";
            $con = mysqli_connect($hostname, $user, $pass, $data);

            if (!$con) {
                die("Connection failed: " . mysqli_connect_error());
            }

           
            $sql = "UPDATE user SET avatar = '$targetFile' WHERE Id = '$userId'";
            if (mysqli_query($con, $sql)) {
                echo json_encode(["status" => 1, "message" => "Avatar updated successfully."]);
            } else {
                echo json_encode(["status" => 0, "message" => "Database update failed."]);
            }

            mysqli_close($con);
        } else {
            echo json_encode(["status" => 0, "message" => "Failed to upload file."]);
        }
    } else {
        echo json_encode(["status" => 0, "message" => "Missing file or user ID."]);
    }
} else {
    echo json_encode(["status" => 0, "message" => "Invalid request method."]);
}
?>
