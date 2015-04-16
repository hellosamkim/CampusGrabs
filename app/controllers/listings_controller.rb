class ListingsController < ApplicationController
  protect_from_forgery with: :exception
  before_action :create_listing
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :ensure_logged_in, only: [:new, :edit, :destroy, :my_listings]
  before_action :ensure_correct_user, only: [:edit]
  before_action :current_user_listings, only: [:my_listings, :my_profile]

  def index
    # Display listings according to campus; defaults to user's pre-selected campus from registration
    @show_all = "#{params[:show_all]}"
    if current_user.present?
      @listings = Listing.select_listing("campus", current_user.campus, @show_all).page params[:page]
    else
      @listings = Listing.all.order("created_at DESC").page params[:page]
    end
    @listings_count = @listings.flatten.count
    if current_user.present?
      new
    end
  end
  
  def show
  end

  def new
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

  def my_listings
  end

  def my_profile
  end

  def search
    @search_query = "#{params[:q]}"
    @listings = []

    @user = User.select_user("username", @search_query)
    @user = @user.listings if @user.present?
    if @search_query.empty?
      @listings = Listing.all.order("created_at DESC").page params[:page]
    else
      @listings += Listing.select_listing("title", @search_query)
      @listings += Listing.select_listing("campus", @search_query)
      @listings += @user.to_a
      @listings = Kaminari.paginate_array(@listings).page(params[:page])
    end    

    @search_count = @listings.count
  end

  private
  def set_listing
    @listing = Listing.find(params[:id])
  end

  def create_listing
    if current_user.present?
      @listing = current_user.listings.build
      @listing.images.build
    end
  end

  def current_user_listings
    @listings = current_user.listings
  end

  def listing_params
    params.require(:listing).permit(:title, :description, :price, :campus, :category, images_attributes: [:id, :picture])
  end
end