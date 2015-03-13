class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username, :email
  has_many :listings

  def self.select_user(property, search_query)
    find_by("LOWER(#{property}) LIKE LOWER(?)", "%#{search_query}%")
  end
end