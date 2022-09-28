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
