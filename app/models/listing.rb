class Listing < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :price, numericality: {only_integer: true}

  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
