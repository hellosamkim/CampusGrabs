class Picture < ActiveRecord::Base
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image, styles: { medium: "300x300" }

  belongs_to :listing
end
