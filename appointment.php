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

$user_name = $_POST['user_name'];
$phone = $_POST['phone'];
$date = $_POST['date'];
$time = $_POST['time'];
$hart = $_POST['hart'];
$breath = $_POST['breath'];
$stomach = $_POST['stomach'];
$move = $_POST['move'];
$ellergia = $_POST['ellergia'];
$blood = $_POST['blood'];
$gormoni = $_POST['gormoni'];
$epilepsy = $_POST['epilepsy'];
$skin = $_POST['skin'];
$sosudi = $_POST['sosudi'];
$operation = $_POST['operation'];
$pregn = $_POST['pregn'];
$breast = $_POST['breast'];
$facebook = $_POST['facebook'];
$info_from = $_POST['info_from'];
$prepar = $_POST['prepar'];



$sql = "INSERT INTO `appointment`(`name`, `phone_number`, `birth_date`, `social_media`, `where_from_know`, `heart`, `breath`, `stomach`, `movement`, `allergia`, `blood`, `garmon`, `epilepsy`, `skin`, `sosudi`, `operation`, `drugs`, `pregnancy`, `breastfeed`, `good_time`) VALUES ('$user_name','$phone','$date','$facebook','$info_from','$hart','$breath','$stomach','$move','$ellergia','$blood','$gormoni','$epilepsy','$skin','$sosudi','$operation','$prepar','$pregn','$breast','$time')";

if (mysqli_query($conn, $sql)) {
      header("Location: index.html");
} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>