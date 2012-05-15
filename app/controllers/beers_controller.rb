class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end
  
  def show
    @beer = Beer.find_by_slug(params[:id])
  end
   
end