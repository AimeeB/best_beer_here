class Admin::BarsController < AdminController
  def index
    @bars = Bar.all
  end
  
  def new
    @bar = Bar.new
  end
  
  def create
    @bar = Bar.new(params[:bar])
    if @bar.save      
      flash[:notice] = 'Bar was successfully created!'  
      return redirect_to admin_bars_path
    end
    render :action => 'new'
  end
  
  def show
    @bar = Bar.find(params[:id])
    @beers = @bar.beers
  end
  
  def edit
    @bar = Bar.find(params[:id])
  end
  
  def update
    @bar = Beer.find(params[:id])
    if @bar.save      
      flash[:notice] = 'Bar was successfully updated!'  
      return redirect_to admin_bars_path
    end
    render :action => 'new'
  end
  
  def destroy
    @bar = Bar.find(params[:id])
    flash[:notice] = 'Bar was successfully destroyed.' if @bar.destroy
    redirect_to(admin_bars_path)
  end
   
end