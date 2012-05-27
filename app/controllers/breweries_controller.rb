class BreweriesController < ApplicationController
  
  def index
    @breweries = Brewery.all
  end
  
  def json
    @breweries = Brewery.all
    render :json => @breweries
  end
  
  def show
    @brewery = Brewery.find_by_slug(params[:id])
    @beers = @brewery.beers
  end
   
end