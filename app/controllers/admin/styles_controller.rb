class Admin::StylesController < AdminController
  def index
    @styles = Style.all
  end
  
  def new
    @style = Style.new
  end
  
  def show
    @style = Style.find(params[:id])
  end
  
  def edit
    @style = Style.find(params[:id])
  end
  
  def create
    @style = Style.new(params[:beer])
    if @style.save      
      flash[:notice] = 'Style was successfully created!'  
      return redirect_to admin_styles_path
    end
    render :action => 'new'
  end
  
  def destroy
    @style = Style.find(params[:id])
    flash[:notice] = 'Style was successfully destroyed.' if @style.destroy
    redirect_to(admin_styles_path)
  end
   
end