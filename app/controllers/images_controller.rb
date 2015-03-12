class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing  
  before_action :set_image, only: [:show, :destroy]
  before_filter :ensure_logged_in, only: [:new, :edit, :destroy]
  before_filter :ensure_correct_user, only: [:edit]
  
  def create
    @image = @listing.images.create(image_params)
    @image.save
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  def destroy
    if @image.destroy
      flash[:success] = "Image successfully removed"
    else
      flash[:error] = "Image could not be deleted. Please try again."
    end
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private
    def set_listing
      @listing = Listing.find(params[:listing_id])
    end

    def set_image
      @image = @listing.images.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:listing_id, :picture)
    end
end
