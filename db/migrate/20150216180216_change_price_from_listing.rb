class ChangePriceFromListing < ActiveRecord::Migration
  def change
    rename_column :listings, :price_in_cents, :price
  end
end
