<?php

require 'timer.php';
if ($timerData['status'] != 1) {
	exit($timerData['message']);
}

require 'checkuserstatus.php';
if ($userStatus != null) {
	exit($userStatus);
}

$conf = parse_ini_file('app.ini.php');

//Compare time of current time and last hint time, return updated hint time if eligible
function get_next_hint_time($level, $nextHintNumber, $lastHintTime)
{
	date_default_timezone_set('Asia/Calcutta');
	$currTime = time();

	if ($level <= 20) {
		$nextHintTime = (5 * 60) + ($nextHintNumber * 1 * 60) + strtotime($lastHintTime);
	} else {
		$nextHintTime = (10 * 60) + ($nextHintNumber * 2 * 60) + strtotime($lastHintTime);
	}

	if ($nextHintTime <= $currTime) {
		return $nextHintTime;
	}
	return 0;
}

$hintsData = array();
$id = $_SESSION['id'];
//Get all previous hints of user
$queryGetAllPrevHints = "SELECT data
						 FROM user, hint
						 WHERE id = '$id' and ques_id = level and hint_number < next_hint";

$resultGetAllPrevHints = mysqli_query($connection, $queryGetAllPrevHints);
if (!$resultGetAllPrevHints) {
	exit('ERROR_RETRIEVING_HINTS');
}

if (mysqli_num_rows($resultGetAllPrevHints) > 0) {
	while ($hints = mysqli_fetch_array($resultGetAllPrevHints)) {
		if ($conf["devmode"] == 1) {
			array_push($hintsData, $hints["data"]);
		} else {
			array_push($hintsData, base64_decode($hints["data"]));
		}
	}
}

while (true) {
	//Retrieve some details of user to calculate next hint time
	$query = "SELECT level, next_hint, last_hint_time
	  	  	  FROM user
	  		  WHERE id = '$id'";

	$result = mysqli_query($connection, $query);
	if (!$result) {
		exit('ERROR_RETRIEVING_HINTS');
	}

	if (mysqli_num_rows($result) > 0) {
		$participant = mysqli_fetch_array($result);

		$nextHintTime = get_next_hint_time($participant["level"], $participant["next_hint"], $participant["last_hint_time"]);

		$participantLevel = $participant["level"];
		$participantNextHintNumber = $participant["next_hint"];

		if ($nextHintTime == 0) {
			//Check if hint not available
			$queryIsHintPresent = "SELECT data
						 		   FROM hint
						 		   WHERE ques_id = '$participantLevel' and hint_number = '$participantNextHintNumber'";

			$resultIsHintPresent = mysqli_query($connection, $queryIsHintPresent);
			if (!$resultIsHintPresent) {
				exit('ERROR_RETRIEVING_HINTS');
			}

			if (mysqli_num_rows($resultIsHintPresent) > 0)
				array_push($hintsData, "You are not eligible for more hints currently. Check back later!");
			else
				array_push($hintsData, "No more hints available for this question currently.");

			break;
		}

		//Get appropriate hint for the user
		$queryGetHint = "SELECT data
						 FROM hint
						 WHERE ques_id = '$participantLevel' and hint_number = '$participantNextHintNumber'";

		$resultGetHint = mysqli_query($connection, $queryGetHint);
		if (!$resultGetHint) {
			exit('ERROR_RETRIEVING_HINTS');
		}

		if (mysqli_num_rows($resultGetHint) > 0) {
			$hint = mysqli_fetch_array($resultGetHint);
			if ($conf["devmode"] == 1) {
				array_push($hintsData, $hint["data"]);
			} else {
				array_push($hintsData, base64_decode($hint["data"]));
			}

			$nextHintDateTime = date("Y-m-d H:i:s", $nextHintTime);
			$nextHintNumber = $participant["next_hint"] + 1;
			//Update new hint number and last hint time of user as calculated by algorithm
			$queryUpdateUserDetails = "UPDATE user
									   SET next_hint = '$nextHintNumber', last_hint_time = '$nextHintDateTime'
									   WHERE id = '$id'";

			$resultUpdateUserDetails = mysqli_query($connection, $queryUpdateUserDetails);
			if (!$resultUpdateUserDetails) {
				exit('ERROR_RETRIEVING_HINTS');
			}

		} else {
			array_push($hintsData, "No more hints available for this question currently.");
			break;
		}
	} else {
		break;
	}
}

echo json_encode($hintsData);

?>
