class Listing < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :price, numericality: {only_integer: true}

  belongs_to :user
  has_many :pictures, :dependent => :destroy
end
