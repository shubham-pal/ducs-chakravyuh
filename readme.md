# chakravyuh

These 3 files were in gitignore -
we need to rebuild / recode these

- database.txt
- hintzz.txt
- hasher.php

## DB

- import `sankalan_chakra_2k16.sql` to see db structure
- import `usefulDump.sql` to see production usage

## Secrets

- md5 hashing is used while submitting answers.
- DB -> answers -> store -> in md5
- for hints base64 decode is used.

## todo

- [X] jquery issue i think. Animations and live load & hints not working. 
- give the admin ssh access / mysql workbench access to monitor the db live
- md5 hasher.php for hints and answer i.e. to populate them
- go through everything in dev mode
- check everything in production mode
- play a mini event for self test
- FB login app live & shit
- login popup not coming for facebook login
- deploy to https
- a frame because it set 'X-Frame-Options' to 'deny'.
- [X] remove timer

## Working

- json file from avinash

{
    "chakravyuh" :
    [
        {
            "quesNumber" : "1", 
            "quesData" : "what?",
            "quesType" : "text"
            "ans" : "lol",
            "hint" : [ "hint1", "hint2"]
        },
        {
            "quesNumber" : "2",
            "quesData" : "./images/q1.png",
            "quesType" : "image"
            "ans" : "lol",
            "hint" : [ "hint1", "hint2"]
        }
    ]
}

- hasher.php or hasher.py
- question table
- hint table
- 5 table generate if not exists + 2 table truncate +  generate complete DB commands shit

- table -> important cheeze
- game status -> paused - 1/0 -> "pause"
- PAUSE GAME BUTTON

- Requirement- >> 
- change a hint / answer  at last moment

- Questions -> plaintext 
- Answers -> md5 hash