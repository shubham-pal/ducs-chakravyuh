# chakravyuh

Please refer [app.ini](./app.ini.php) before moving forward.

## todo

- [x] These 3 files were in gitignore we need to rebuild / recode these
  - [x] database.txt
  - [x] hintzz.txt
  - [x] hasher.php
- [x] jquery issue i think. Animations and live load & hints not working.
- give the admin ssh access / mysql workbench access to monitor the db live
- [x] md5 hasher.php for hints and answer i.e. to populate them
- go through everything in dev mode
- check everything in production mode
- play a mini event for self test
- FB login app live & shit
- login popup not coming for facebook login
- deploy to https
- a frame because it set 'X-Frame-Options' to 'deny'.
- [x] remove timer

## Working

- [x] json file from avinash
- [x] hasher.php or hasher.py
- [x] question table and hint table
- [x] 5 table generate if not exists + 2 table truncate + generate complete DB commands shit

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
