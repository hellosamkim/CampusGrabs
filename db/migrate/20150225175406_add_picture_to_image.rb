class AddPictureToImage < ActiveRecord::Migration
  def change
    add_column :images, :picture, :string
  end
end
