class Group < ApplicationRecord
  has_many :messages
  has_many :group_members
  has_many :users, through: :group_members
  validates :name, presence: true, uniqueness: true

  def show_latest_message
    if (last_message = messages.last).present?
      last_message.text? ? last_message.text : 'Photo'
    else
      'No Message have registered'
    end
  end
end
