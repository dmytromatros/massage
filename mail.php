<?php 
$servername = "yy217444.mysql.tools";
$database = "yy217444_massage";
$username = "yy217444_massage";
$password = "_3)6F8ttvP";
// Устанавливаем соединение
$conn = mysqli_connect($servername, $username, $password, $database);

mysqli_query($conn, "SET NAMES 'utf8' COLLATE 'utf8_general_ci'");
mysqli_query($conn, "SET CHARACTER SET 'utf8'");

// Проверяем соединение
if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
}

$left_review = $_POST['left_review'];
$review_textarea = $_POST['review_textarea'];

$name = $_POST['user_name'];
$client_text = $_POST['textarea'];
$email = $_POST['user_email'];
$sql = "INSERT INTO `message` (`Name`, `Email`, `Textmail`) VALUES ('$name', '$email', '$client_text')";
if (mysqli_query($conn, $sql)) {
				header("Location: index.html");
} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>