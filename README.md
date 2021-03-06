# DB Layout

## users table

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
*E-mail/Passwords will be added by "Devise"

### Association
- has_many :group_members
- has_many :groups through: :group_members
- has_many :comments

## comments table

|Column|Type|Options|
|------|----|-------|
|comment|text|-|
|image|string|-|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groups table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :comments
- has_many :group_members
- has_many :users through: :group_members

## group_members table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
