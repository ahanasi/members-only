class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_index :users, :username, :unique => true
    #Ex:- add_index("admin_users", "username")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
