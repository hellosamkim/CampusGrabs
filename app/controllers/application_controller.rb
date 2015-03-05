class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
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

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :campus, :first_name, :last_name, :avatar, :avatar_cache, :facebook, :twitter) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :user_bio, :campus, :first_name, :last_name, :avatar, :avatar_cache, :facebook, :twitter) }
  end
end
