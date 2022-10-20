# アプリケーション名
MyDiary

# アプリケーション概要
毎日の日記を記録できる。検索機能によって過去の日記を遡ることもできる。

# URL
https://mydiary-snsk.herokuapp.com/

# テスト用アカウント
- Basic認証ID: snsk
- Basic認証パスワード: 2525
- メールアドレス: sss@gmail.com
- パスワード: sss222

# 利用方法
1. トップページからユーザー新規登録を行う
2. ユーザーページ右下の羽ペンマークをクリック
3. 必要な情報を記載
4. ユーザーページの本をめくり日記を確認
5. 本上部の検索欄からタイトルまたは日付で日記の検索が行える

# アプリケーションを作成した経緯
家族に課題をヒヤリングし、「普段書き留めている日記が紙だと嵩張るし、思い出を振り返るときに探すのが手間」といった課題を抱えていることが判明した。そこでデータ上に保存しておくことで嵩張ることもなく、検索機能で過去に書き留めた内容をすぐに表示させることができると思い制作に至った。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1nQh-ANJzr7tyZyYuHBa0CIKr2XYa1bESgHNrMcViolA/edit#gid=982722306

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/ad77a93295635afaed4a12bcb7b272ce.png)](https://gyazo.com/ad77a93295635afaed4a12bcb7b272ce)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/b6c625e5bde83002897bc75402a04d7f.png)](https://gyazo.com/b6c625e5bde83002897bc75402a04d7f)

# 開発環境
- フロントエンド: HTML,CSS,Javascript(jQuery)
- バックエンド: Ruby
- テキストエディタ: VScode
- タスク管理: Github

# 工夫したポイント
- 日記を書いているというリアリティを出すために閲覧形式をJavascript(jQuery)を用い「本」 という形にした。
- 日記は個人のみが閲覧できる状況にするため、新規登録・ログインすると直接ユーザーページ飛ぶようにした。