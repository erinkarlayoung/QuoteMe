class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  private

  def current_user
  	@current_user = session[:user_id] && User.find(session[:user_id])
  end
end
