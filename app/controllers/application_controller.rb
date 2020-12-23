class ApplicationController < ActionController::Base
  #訳：偽造からの保護、それは例外？
  protect_from_forgery with: :exception
  
  add_flash_types :success, :info, :warning, :danger
end
