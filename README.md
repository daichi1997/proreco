## usersテーブル

| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false |
| name               | string  | null: false |

### Association

- has_many :prorecos
- has_many :comments

## proreco テーブル

| Column             | Type      | Options     |
| ------------------ | ------    | ----------- |
| user_id            | references | foreign_key: true |
| title              | string    | null: false |
| content            | text      | null: false |

### Association
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, through: :post_tags

## comment テーブル

| Column | Type       | Options    |
| ------ | ---------- | ---------- |
| user                | references | null: false, foreign_key: true |
| proreco                | references | null: false, foreign_key: true |
| content            | text      | null: false |

### Association

belongs_to :user
  belongs_to :proreco
## tags テーブル

| Column             | Type      | Options     |
| ------------------ | ------    | ----------- |
| name               | string    | null: false, foreign_key: true | 

### Association
  has_many :post_tags
  has_many :posts, through: :post_tags


## post_tags（中間テーブル）
| Column             | Type      | Options     |
| ------------------ | ------    | ----------- | 
| proreco_id         | references    | foreign_key: true |
| tag_id             | references    | foreign_key: true | 

### Association

  belongs_to :post
  belongs_to :tag