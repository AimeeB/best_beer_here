class Admin::BeersController < AdminController
  def index
    @beers = Beer.all
  end
  
  def new
    @beer = Beer.new
  end
  
  def create
    @beer = Beer.new(params[:beer])
    if @beer.save      
      flash[:notice] = 'Beer was successfully created!'  
      return redirect_to admin_beers_path
    end
    render :action => 'new'
  end
  
  def show
    @beer = Beer.find_by_slug(params[:id])
    @bars = @beer.bars
    @brewery = @beer.brewery
    @style = @beer.style
  end
  
  def edit
    @beer = Beer.find_by_slug(params[:id])
  end  
  
  def update
    @beer = Beer.find_by_slug(params[:id])
    if @beer.update_attributes(params[:beer])      
      flash[:notice] = 'Beer was successfully updated!'  
      return redirect_to admin_beers_path
    end
    render :action => 'new'
  end
  
  def destroy
    @beer = Beer.find_by_slug(params[:id])
    flash[:notice] = 'Beer was successfully destroyed.' if @beer.destroy
    redirect_to(admin_beers_path)
  end
   
end