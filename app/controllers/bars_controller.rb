class BarsController < ApplicationController
  def index
    @bars = Bar.all
  end
  
  def show
    @bar = Bar.find_by_slug(params[:id])
    @beers = @bar.beers
  end
   
end