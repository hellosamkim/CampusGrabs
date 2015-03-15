class Listing < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :price, numericality: {only_integer: true}

  belongs_to :user
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  def self.select_listing(property, search_query, show_all = nil)
    if show_all.nil?
      where("LOWER(#{property}) LIKE LOWER(?)", "%#{search_query}%").order("created_at DESC")
    else
      all.order("created_at DESC")
    end
  end

  def user_auth(current_user)
    current_user && current_user.id == self.user.id
  end

  def my_campus?(current_user)
    current_user && self.campus == current_user.campus
  end

  def creation_date
    self.created_at.strftime("%b %d, %Y")
  end
end
