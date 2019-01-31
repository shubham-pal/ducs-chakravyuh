# chakravyuh

Please refer [app.ini](./app.ini.php) before moving forward.

## todo

- [x] These 3 files were in gitignore we need to rebuild / recode these
  - [x] database.txt
  - [x] hintzz.txt
  - [x] hasher.php
- [x] jquery issue i think. Animations and live load & hints not working.
- [x] md5 hasher.php for hints and answer i.e. to populate them
- [x] login popup not coming for facebook login - a frame because it set 'X-Frame-Options' to 'deny'.
- [x] remove timer

- [x] json file from avinash
- [x] hasher.php or hasher.py
- [x] question table and hint table
- [x] 5 table generate if not exists + 2 table truncate + generate complete DB commands shit

- [x] questions shuffle -> admin -> by changing ids of questions
- [X] user block karna hai - set `blocked` field corresponding to user as `1` . example query `UPDATE `user` SET `blocked` = '1' WHERE `user`.`name` = "JATIN ROHILLA"`


- [ ] test everything in dev mode
- [ ] test everything in production mode

- hints ka time control -> itni minute baad
- UI new
- documentation
- [x] thumbs up -> should not affect dom
- [x] 12 attemps visible - done

## Deploy time

- give the admin ssh access / mysql workbench access to monitor the db live
- play a mini event for self test
- FB login app live
- deploy to https

## future scope

- table -> important cheeze
- game status -> paused - 1/0 -> "pause"
- PAUSE GAME BUTTON
- Requirement- >>
- change a hint / answer at last moment

## DB

- import `sankalan_chakra_2k16.sql` to see db structure
- import `usefulDump.sql` to see production usage

## Secrets

- md5 hashing is used while submitting answers.
- DB -> answers -> store -> in md5
- for hints base64 decode is used.
