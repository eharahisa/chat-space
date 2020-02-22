## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group_id|integer|null: false, foreign_key|
|user_id|integer|null: false, foreign_key|

### Association
- belong_to :user
- belong_to :group

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index|
|email|string|null: false, unique: true|


### Association
- has_many :messages
- has_many :groups, through: :users_groups
- has_many :groups_users


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :messages
- has_many :users, through: :groups_users
- has_many :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group





