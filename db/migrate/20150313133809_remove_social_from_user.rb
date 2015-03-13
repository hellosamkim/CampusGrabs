class RemoveSocialFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :facebook
    remove_column :users, :twitter
  end
end
