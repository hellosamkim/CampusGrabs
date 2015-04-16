class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @listings = Listing.where("(user_id) = (#{@user.id})").page params[:page]
    if current_user.present?
      @listing = current_user.listings.build
      @listing.images.build
    end
  end
end
