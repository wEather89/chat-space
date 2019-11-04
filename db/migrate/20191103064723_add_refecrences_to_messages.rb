class AddRefecrencesToMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :user_id, :integer
    remove_column :messages, :group_id, :integer
    add_reference :messages, :user, index: true
    add_reference :messages, :group, index: true
    add_column :messages, :image, :string
  end
end