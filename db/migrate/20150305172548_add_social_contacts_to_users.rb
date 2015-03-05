class AddSocialContactsToUsers < ActiveRecord::Migration
  def change
    add_column :Users, :facebook, :string
    add_column :Users, :twitter, :string
  end
end
