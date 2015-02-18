class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all.order("created_at DESC")
  end

  def show
  end

  def new
    @listing = current_user.listings.build
  end

  def create
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      flash[:success] = "Listing successfully created"
      redirect_to @listing
    else
      flash[:error] = "Listing could not be created, please try again."
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
      flash[:success] = "Listing successfully deleted"
    else
      flash[:error] = "Listing could not be deleted, please try again."
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
