class Admin::StylesController < AdminController
  def index
    @styles = Style.all
  end
  
  def new
    @style = Style.new
  end
    
  def create
    @style = Style.new(params[:style])
    if @style.save      
      flash[:notice] = 'Style was successfully created!'  
      return redirect_to admin_styles_path
    end
    render :action => 'new'
  end
  
  def edit
    @style = Style.find_by_slug(params[:id])
  end
  
  def update
    @style = Style.find_by_slug(params[:id])
    if @style.update_attributes(params[:style])      
      flash[:notice] = 'Style was successfully updated!'  
      return redirect_to admin_styles_path
    end
    render :action => 'new'
  end
  
  def show
    @style = Style.find_by_slug(params[:id])
  end

  def destroy
    @style = Style.find_by_slug(params[:id])
    flash[:notice] = 'Style was successfully destroyed.' if @style.destroy
    redirect_to(admin_styles_path)
  end
   
end