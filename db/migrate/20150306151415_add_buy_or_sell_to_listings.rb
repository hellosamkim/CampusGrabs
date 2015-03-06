class AddBuyOrSellToListings < ActiveRecord::Migration
  def change
    add_column :listings, :type_of_listing, :string
  end
end
