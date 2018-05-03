class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, :limit => 35
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
