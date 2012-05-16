class AdminController < ApplicationController
  before_filter :authenticate_user!
  before_filter :admin_present
  
  def index
  end
  
  def new
  end
  
  def admin_present
    @admin = true
  end
  
end