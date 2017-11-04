class AddUsernameAndAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_attachment :users, :avatar
    add_column :users, :username, :string
    add_column :users, :bio, :text
  end
end