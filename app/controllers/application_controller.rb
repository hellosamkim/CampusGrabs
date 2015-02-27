class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def ensure_logged_in
    unless current_user
      flash[:alert] = "Please Log In"
      redirect_to listings_path
    end
  end

  def ensure_correct_user
    unless current_user.id == @listing.user_id
      flash[:alert] = "You cannot edit other people's listings."
      redirect_to listing_path
    end
  end
end
