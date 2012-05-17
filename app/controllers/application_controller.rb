class ApplicationController < ActionController::Base
  
  require 'application_helper'
  
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end  
  
end
