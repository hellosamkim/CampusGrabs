class Listing < ActiveRecord::Base
  validates :name, :description, presence: true
  validates :price, numericality: {only_integer: true}
end
