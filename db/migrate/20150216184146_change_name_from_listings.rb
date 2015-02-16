class ChangeNameFromListings < ActiveRecord::Migration
  def change
    rename_column :listings, :name, :title
  end
end
