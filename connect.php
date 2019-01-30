<?php

// disable this in production mode
error_reporting(1);

$conf = parse_ini_file('app.ini.php');

$servername = "localhost";
$username = "root";
$password = $conf["s_pass"];
$DB_NAME = "sankalan_chakra_2k16";

$connection = mysqli_connect($servername, $username, $password, $DB_NAME);
if (!$connection)
{
    echo('ERROR_CONNECTION_FAILURE');
}
// THis is generating error : don't echo
// else{
// 	echo('Connected');
// }

?>


<?php

//setup your credentials
// $your_username = "root";
// $your_password = "";

// $servername = "localhost";
// $username = $your_username;
// $password = $your_password;
// // Create connection
// $conn = mysqli_connect($servername, $username, $password);
// // Check connection
// if (!$conn) {
//     die("Connection failed: " . mysqli_connect_error());
// }
?>
