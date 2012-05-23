class HomeController < ApplicationController
  
  before_filter :at_home
  
  def at_home
    @home = true
  end
  
  def index
  end

end