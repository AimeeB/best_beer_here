class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
  
  def show
    @ingredient = Ingredient.find_by_slug(params[:id])
  end
   
end