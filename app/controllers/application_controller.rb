class ApplicationController < ActionController::Base
  #訳：偽造からの保護、それは例外？
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  
  #現在ロインしているuserのこと
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
  
end
