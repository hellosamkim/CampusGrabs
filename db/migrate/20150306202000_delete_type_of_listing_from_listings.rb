class DeleteTypeOfListingFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :type_of_listing
  end
end
