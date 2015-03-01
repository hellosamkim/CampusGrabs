class Image < ActiveRecord::Base
  validates :picture, presence: true

  belongs_to :listing
  mount_uploader :picture, PictureUploader
end
