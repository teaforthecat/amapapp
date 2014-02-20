class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def require_account!
    redirect_to root_path unless current_user.try(:account_id)
  end
end
