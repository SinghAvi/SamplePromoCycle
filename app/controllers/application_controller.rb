class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    puts "----------------------------------current user------------------------------------"
    puts current_user
    puts "----------------------------------current user------------------------------------"
    show_user_users_path
  end
end
