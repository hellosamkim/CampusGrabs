class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @listings = Listing.where("(user_id) = (#{@user.id})").page params[:page]
  end
end
