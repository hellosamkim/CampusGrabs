class AddCampusToListings < ActiveRecord::Migration
  def change
    add_column :listings, :campus, :string
  end
end
