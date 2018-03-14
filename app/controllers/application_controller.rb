class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  add_flash_types :success, :info, :warning, :danger
end
