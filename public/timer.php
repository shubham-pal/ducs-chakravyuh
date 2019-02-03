<?php

date_default_timezone_set('Asia/Calcutta');

// Event start time.
// mktime(hour,minute,second,month,day,year,is_dst);
$startTime = mktime(22, 0, 0, 2, 2, 2019);
// $startTime = mktime(00, 48, 00, 2, 1, 2019);

// Event end time.
$endTime = mktime(21, 0, 0, 2, 3, 2019);

// Current time.
$currTime = time();

$startDiff = $currTime - $startTime;
$endDiff = $currTime - $endTime;

$timerData = array('status' => null, 'message' => null, 'value' => null);

if ($startDiff < 0) {
	// Event hasn't started yet.
	$timerData['status'] = 0;
	$timerData['value'] = abs($startDiff);
	$timerData['message'] = 'THE GAME IS ABOUT TO BEGIN. ARE YOU READY?';
} else if ($endDiff < 0) {
	// Event running.
	$timerData['status'] = 1;
	$timerData['value'] = abs($endDiff);
	$timerData['message'] = 'THE GAME HAS BEGUN. GO FOR IT!';
} else {
	// Event ended.
	$timerData['status'] = -1;
	$timerData['value'] = 0;
	$timerData['message'] = 'THE GAME HAS ENDED';
}

if (isset($_GET['operation'])) {
	if ($_GET['operation'] == 'difference') {
		echo json_encode($timerData);
	}
}



?>