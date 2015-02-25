class Listing < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :price, numericality: {only_integer: true}

  belongs_to :user
  has_many :images, :dependent => :destroy

  def user_auth(current_user)
    current_user && current_user.id == self.user.id
  end
end
