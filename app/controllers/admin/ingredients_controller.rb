class Admin::IngredientsController < AdminController
  def index
    @ingredients = Ingredient.all
  end
  
  def new
    @ingredient = Ingredient.new
  end
  
  def create
    @ingredient = Ingredient.new(params[:ingredient])
    if @ingredient.save      
      flash[:notice] = 'Ingredient was successfully created!'  
      return redirect_to admin_ingredients_path
    end
    render :action => 'new'
  end
  
  def show
    @ingredient = Ingredient.find_by_slug(params[:id])
  end
  
  def edit
    @ingredient = Ingredient.find_by_slug(params[:id])
  end
  
  def update
    @ingredient = Ingridient.find_by_slug(params[:id])
    if @ingredient.save      
      flash[:notice] = 'Ingredient was successfully updated!'  
      return redirect_to admin_ingredients_path
    end
    render :action => 'new'
  end
  
  def destroy
    @ingredient = Ingredient.find_by_slug(params[:id])
    flash[:notice] = 'Ingredient was successfully destroyed.' if @ingredient.destroy
    redirect_to(admin_ingredients_path)
  end

end
