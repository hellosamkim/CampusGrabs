class AddUserBioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_bio, :text
    add_index :users, :user_bio
  end
end
