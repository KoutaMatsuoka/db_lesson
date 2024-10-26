Q1
  現在、db_lessonにはpeopleとreportsの2つのテーブルがありますが、新たに部署のテーブルを追加してください。
  作成するテーブルの条件は以下のテーブル定義書で表しています。

    テーブル論理名:部署	テーブル物理名:departments

    PK	UK	カラム論理名	カラム物理名	  データ型      	桁  NULL	DEFAULT         	備考
    ◯   - 	 部署ID	     department_id	INT unsigned	 -	  NO	  -	                 auto_increment
    -    -  	部署名	    name	         VARCHAR	      20	 NO	   -	                   -
    -    -  	作成日時	  created_at	   TIMESTAMP	    -    YES  CURRENT_TIMESTAMP	     -
    -    -	  更新日時	  updated_at	   TIMESTAMP	    -    YES	CURRENT_TIMESTAMP   ON UPDATE CURRENT_TIMESTAMP

Q2
  部署を保存するテーブルは準備できましたが、このままでは誰がどの部署に所属しているかという情報が足りません。
  そこでpeopleテーブルに新しいカラムを追加して、誰がどこ所属しているかがわかるようにしましょう。
  新しく追加するカラムの情報は以下の通りです。

    PK	UK	カラム論理名	カラム物理名	  データ型      	桁  NULL	DEFAULT   備考
     -	-   	部署ID	    department_id 	INT unsigned	 -	YES   	-	      emailの後ろに追加する

Q3
  departments、people、reportsテーブルに以下の条件を満たすようなレコードを挿入してください。
    追加する部署一覧(departments):
      営業
      開発
      経理
      人事
      情報システム
      部署のレコードを追加するにあたって順番は前後しても構いません。
    追加する人の条件(people):
      10人分のレコードを追加する
      人数比率は営業3人、開発4人、経理1人、人事1人、情報システム1人
    追加する日報の条件(reports):
      10件の日報を追加する
      日報は誰に紐付けてもいいが、存在しないperson_idとは紐付けない
      日報の文字数は最低10文字で、同じ日報を作成しない

Q4
  練習問題2で新しく追加したdepartment_idですが、このカラムを追加する前からテーブルに存在していたレコードのdepartment_idがNULLになってしまっています。
  そこでこのdepartment_idのNULLを、以下の条件に当てはまる値で埋めるためのクエリを作成してください。
    条件:
      存在する部署のIDが割り振られること
      どう割り振るかは指定しませんが、必ずWHEREを使って条件を絞ってください

Q5
  年齢の降順で男性の名前と年齢を取得してください。

Q6
  テーブル・レコード・カラムという3つの単語を適切に使用して、下記のSQL文を日本語で説明してください。

SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;

Q7
  20代の女性と40代の男性の名前一覧を取得してください。

Q8
  営業部に所属する人だけを年齢の昇順で取得してください。

Q9
  開発部に所属している女性の平均年齢を取得してください。
    条件:カラム名はaverage_ageとなるようにしましょう

Q10
  名前と部署名とその人が提出した日報の内容を同時に取得してください。（日報を提出していない人は含めない）

Q11
  日報を一つも提出していない人の名前一覧を取得してください。