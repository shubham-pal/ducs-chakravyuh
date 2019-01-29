<?php

date_default_timezone_set('Asia/Calcutta');

// Event start time.
$startTime = mktime(0, 0, 0, 1, 22, 2019);

// Event end time.
$endTime = mktime(0, 0, 0, 1, 25, 2019);

// Current time.
$currTime = time();

$startDiff = $currTime - $startTime;
$endDiff = $currTime - $endTime;

$timerData = array('status' => NULL, 'message' => NULL, 'value' => NULL);

if ($startDiff < 0)
{
	// Event hasn't started yet.
	$timerData['status'] = 0;
	$timerData['value'] = abs($startDiff);
	$timerData['message'] = 'THE GAME IS ABOUT TO BEGIN. ARE YOU READY?';
}
else if ($endDiff < 0)
{
	// Event running.
	$timerData['status'] = 1;
	$timerData['value'] = abs($endDiff);
	$timerData['message'] = 'THE GAME HAS BEGUN. GO FOR IT!';
}
else
{
	// Event ended.
	$timerData['status'] = -1;
	$timerData['value'] = 0;
	$timerData['message'] = 'THE GAME HAS ENDED';
}

$timerData['status'] = 1;
$timerData['value'] = abs($endDiff);
$timerData['message'] = 'THE GAME HAS BEGUN. GO FOR IT!';
// $_GET['operation'] = 'difference';

if (isset($_GET['operation']))
{
	if ($_GET['operation'] == 'difference')
	{
		echo json_encode($timerData);
	}
}



?>