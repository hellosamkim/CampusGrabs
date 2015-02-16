class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      redirect_to @listing
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @listing.update_attributes(listing_params)
      redirect_to @listing
    else
      render :edit
    end
  end

  def destroy
    if @listing.destroy
      flash[:success] = "Listing was deleted"
    else
      flash[:error] = "Listing could not be deleted, please try again later."
    end
    redirect_to @listing
  end

  private
  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :description, :price)
  end
end
