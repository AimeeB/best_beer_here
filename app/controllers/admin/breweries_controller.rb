class Admin::BreweriesController < AdminController
  def index
    @breweries = Brewery.all
  end
  
  def new
    @brewery = Brewery.new
  end
  
  def create
    @brewery = Brewery.new(params[:brewery])
    if @brewery.save      
      flash[:notice] = 'brewery was successfully created!'  
      return redirect_to admin_breweries_path
    end
    render :action => 'new'
  end
 
  def show
    @brewery = Brewery.find_by_slug(params[:id])
    @beers = Beer.where(:brewery_id => @brewery.id)
  end
  
  def edit
    @brewery = Brewery.find_by_slug(params[:id])
  end

  def update
    @brewery = Brewery.find_by_slug(params[:id])
    if @brewery.save      
      flash[:notice] = 'Beer was successfully updated!'  
      return redirect_to admin_brewerys_path
    end
    render :action => 'new'
  end
  
  def destroy
    @brewery = Brewery.find_by_slug(params[:id])
    flash[:notice] = 'brewery was successfully destroyed.' if @brewery.destroy
    redirect_to(admin_breweries_path)
  end

end
  