class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #
  # DEACTIVATED FOR THE SAKE OF THE DEMO
  # protect_from_forgery with: :exception
  # after_filter :manage_headers

  def after_sign_in_path_for(resource)
    todos_url
  end

  def manage_headers
    response.headers = response.headers.except("X-Frame-Options")
    puts response.headers
  end
end
