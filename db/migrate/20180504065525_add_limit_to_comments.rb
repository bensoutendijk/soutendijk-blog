class AddLimitToComments < ActiveRecord::Migration[5.0]
  def change
    change_column :comments, :body, :string, :limit => 255
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
