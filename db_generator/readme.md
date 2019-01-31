# DB Generator

1. make a `questions.json` file similar to `sample_questions.json`
2. place all the required files for questions in `chakraData` folder present in the document root
3. make all file names long and unpredictable like `hkebjcwkecbfw.png`

4. run the script `python generator.py` . This will use `questions.json` and a SQL file named `questions_SQL_dump.sql` is generated. or if you want to pass custom files use command `python generator.py sample_questions.json sample_SQL_dump.sql`

5. import this file in phpmyadmin / mysql, it will automatically create db, tables and populate tables with hashes of questions and hints.

6. also make sure to upload `chakraData` onto the server otherwise questions will break.
