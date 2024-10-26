Q1
  `create table departments (
    -> department_id INT unsigned NOT NULL auto_increment primary key,
    -> name VARCHAR(20) NOT NULL,
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
    -> );`

Q2
  `ALTER TABLE people ADD department_id INT unsigned AFTER email;`

Q3
  `insert into departments (name)
    -> values
    -> ('営業'),
    -> ('開発'),
    -> ('経理'),
    -> ('人事'),
    -> ('情報システム');`

  `insert into people (name, email, department_id, age, gender)
    -> values
    -> ('営業1', 'sales1@test.jp', 1, 51, 1),
    -> ('営業2', 'sales2@test.jp', 1, 34, 2),
    -> ('営業3', 'sales3@test.jp', 1, 24, 2),
    -> ('開発1', 'developer1@test.jp', 2, 42, 2),
    -> ('開発2', 'developer2@test.jp', 2, 44, 1),
    -> ('開発3', 'developer3@test.jp', 2, 36, 2),
    -> ('開発4', 'developer4@test.jp', 2, 55, 2),
    -> ('経理', 'accounter@test.jp', 3, 33, 1),
    -> ('人事', 'HRD@test.jp', 4, 24, 1),
    -> ('情報システム', 'InfoSys@test.jp', 5, 23, 2);`

  `insert into reports (person_id, content)
    -> values
    ->  (8, 'テストデータその1'),
    ->  (10, 'テストデータその2'),
    ->  (15, 'テストデータその3'),
    ->  (11, 'テストデータその4'),
    ->  (14, 'テストデータその5'),
    ->  (14, 'テストデータその6'),
    ->  (16, 'テストデータその7'),
    ->  (12, 'テストデータその8'),
    ->  (7, 'テストデータその9'),
    ->  (9, 'テストデータその10');`

Q4
  `UPDATE people SET department_id = 1 WHERE person_id = 1;`
  `UPDATE people SET department_id = 2 WHERE person_id = 2;`
  `UPDATE people SET department_id = 4 WHERE person_id = 3;`
  `UPDATE people SET department_id = 1 WHERE person_id = 4;`
  `UPDATE people SET department_id = 5 WHERE person_id = 6;`

Q5
  `SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;`
  
Q6
  `SELECT `name`, `email`, `age` FROM `people` WHERE `department_id` = 1 ORDER BY `created_at`;`
  peopleテーブルからdepartment_idが1のレコードを対象にname、email、ageのカラムを抽出し、crated_atを参照して昇順に並び替え

Q7
  `SELECT * FROM people WHERE age BETWEEN 40 AND 49 AND gender = 1 OR age BETWEEN 20 AND 29 AND gender = 2;`

Q8
  `SELECT * FROM people WHERE department_id = 1 ORDER BY age;`

Q9
  `SELECT AVG(age) AS average_age FROM people WHERE department_id = 1 AND gender = 2 GROUP BY gender;`

Q10
  ` SELECT p.name, d.name, r.content FROM people p INNER JOIN reports r USING (person_id) INNER JOIN departments d USING (department_id);`

Q11
  `SELECT p.name FROM people p LEFT OUTER JOIN reports r USING (person_id) WHERE r.content IS NULL;`