# DB Structure

## Tables

- QUESTION (ID, ANSWER, DATA, TYPE)

- HINT (QID, HINT#, HINT)

- USER (ID, NAME, EMAIL, PICTURE_URL, BLOCKED, LEVEL#, POINTS, LEVEL_UPDATE_TIME, LEVEL_UPDATE_TIME_MICRO, LAST_HINT_TIME, NEXT_HINT#)

- USERATTEMPT (UID, LEVEL, COUNT, LAST_FIVE_ATTEMPTS)

- LEVELCLEAR (LEVEL#, TIME, TIME_MICRO, UID)

- HINT_TIME_CONTROL

$LowerLevels_fixed_distance_from_last_hint = 5
$LowerLevels_added_time_factor_based_on_hint_level = 1
$partition_point_is_at_level = 20
$UpperLevels_fixed_distance_from_last_hint = 10
$UpperLevels_added_time_factor_based_on_hint_level = 2


## Scoring

1. Top 20 - 10
2. Next 30 - 9
3. Rest - 8 points
