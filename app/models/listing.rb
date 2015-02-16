class Listing < ActiveRecord::Base
  validates :name, :description, presence: true
  validates :price_in_cents, numericality: {only_integer: true}
end
