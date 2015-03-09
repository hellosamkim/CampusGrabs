class Listing < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :price, numericality: {only_integer: true}

  belongs_to :user
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  def user_auth(current_user)
    current_user && current_user.id == self.user.id
  end

  def universities
    ["Brock University", "Carleton University", "University of Guelph", "Lakehead University", "McMaster University", "OCAD University", "University of Ottawa", "Queen's University", "Ryerson University", "University of Toronto", "Trent University", "UOIT", "University of Waterloo", "UWO", "Wilfrid Laurier University", "University of Windsor", "York University"].sort!
  end
end
