# DB Layout

## users table

|Column|Type|Options|
|------|----|-------|
|nickname|text|null: false|
|e-mail|integer|null: false|

### Association
- has_many :groups through: :group_members
- has_many :comments

## comments table

|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|image|string|-|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groups table

|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false|

### Association
- has_many :comments
- has_many :users through: :group_members

## group_members table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
