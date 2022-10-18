## アプリケーション名
kirokuya2
## アプリケーション内容
体重を記録し、それをカレンダーやグラフなどで分かりやすく表示させる
## URL
https://kirokuya2.herokuapp.com/
## テスト用アカウント
・Basic認証パスワード:2222
・Basic認証ID:admin
・メールアドレス:
・パスワード:
## 利用方法
## 体重記録
1.トップページからユーザー新規登録を行う。
2.体重を記録するボタンから、内容(日付、体重、体脂肪率、【コメント】)を入力し投稿する。
## カレンダーを見る
1.カレンダーを見るボタンから確認することができる。
2.記録した内容(日付、体重、体脂肪率、【コメント】)を確認することができる
## グラフを見る
1.グラフを見るボタンから確認することができる
2.記録した内容(体重、体脂肪率)を確認することができる

## アプリケーションを作成した背景
主に自分のために作成したものである。ダイエットを3日坊主で辞めてしまう課題があった。課題を分析した結果、ダイエットを継続するためのモチベーションが欠如することが原因と考えた。そこで体重や体脂肪率などの記録をカレンダーやグラフなど客観的に分かりやすく表示することで努力を実感することができ、それがモチベの向上に繋がるのではと考えた。(また対戦機能をつけることでさらにライバル意識が生まれ、モチベに繋がるのではと考えている)
## 洗い出した要件
https://docs.google.com/spreadsheets/d/1jhRGuThjbXWG-ASDfgFq5KreM78OzHrDdhq_7XWGYGs/edit#gid=982722306
## 実装した機能についての画像やGIFおよびその説明
〜〜画像やGIF、説明を記載〜〜
## 実装予定の機能
コメント機能、対戦機能、目標体重の設定及びグラフの線の表示
## データベース設計

## 画面遷移図

## 開発環境
・Ruby
・Ruby on Rails
・MySQL
・GitHub
・Heroku
・Visual Studio Code

## ローカルでの動作方法

## 工夫したポイント



## usersテーブル

| name          | string  | option                    |
| ------------- | ------- | ------------------------- |
| nickname      | string  | null: false               |
| encrypted     | string  | null: false               |
| height        | float   | null: false               |
| email         | string  | null: false, unique: true |
| sex_id        | integer | null: false               |
| weight        | float   | null: false               |
| target_weight | float   | null: false               |

has_many :records
has_one :calender

## recordsテーブル

| name                | string    | option                         |
| ------------------- | --------- | ------------------------------ |
| weight              | float     | null: false                    |
| body fat percentage | float     | null: false                    |
| month               | integer   | null: false                    |
| date                | integer   | null: false                    |
| user                | reference | null: false, foreign_key: true |

belong_to :user
has_one :comments

## commentsテーブル

| name      | string    | option                         |
| --------- | --------- | ------------------------------ |
| comment   | text      |                                |
| user_id   | reference | null :false ,foreign_key :true |
| record_id | reference | null :false ,foreign_key :true |

belong_to :record