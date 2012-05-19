require 'spec_helper'

describe Admin::BeersController do
  before do
    @beer = Beer.create(:name => 'Test beer')
  end
  
  describe "PUT update" do
    it "should update the ingredients" do
      ingred = Ingredient.create(:name => 'some hops')
      post :update, :id => @beer.id, :ingredients => [ ingred ]
      @beer.reload
      @beer.ingredients.should_not == []
    end
  end
end