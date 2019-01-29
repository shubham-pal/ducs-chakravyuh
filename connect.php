<?php

// disable this in production mode
error_reporting(1);

$connection = mysqli_connect('localhost', 'root', '', 'sankalan_chakra_2k16');
if (!$connection)
{
    echo('ERROR_CONNECTION_FAILURE');
}else{
	echo('Connected');
}

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
