class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username         

  has_many :listings
  
  def universities
    ["Brock University", "Carleton University", "University of Guelph", "Lakehead University", "McMaster University", "OCAD University", "University of Ottawa," "Queen's University", "Ryerson University", "University of Toronto", "Trent University", "UOIT", "University of Waterloo", "UWO", "Wilfrid Laurier University", "University of Windsor", "York University"].sort!
  end
end