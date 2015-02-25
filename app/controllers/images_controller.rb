class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy, :create]
  before_action :set_listing

  def show
  end

  def new
    @image = Image.new
  end

  def edit
  end

  def create
    @image = @listing.images.create(image_params)
    redirect_to @listing
  end

  def update
    @image.update(image_params)
  end

  def destroy
    if @image.destroy
      flash[:success] = "Image successfully removed"
    else
      flash[:error] = "Image could not be deleted. Please try again."
    end
    redirect_to @listing
  end

  private
    def set_listing
      @listing = Listing.find(params[:listing_id])
    end

    def set_image
      @image = @listing.images.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:listing_id)
    end
end
