class OttersController < ApplicationController
  def index
    @otters = Otter.all

    respond_to do |format|
      format.html
      format.json { render :json => @otters }
    end
  end
  
  def show
    @otter = Otter.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render :json => @otter }
    end
  end
  
  def new
    @otter = Otter.new
  end
  
  def create
    @otter = Otter.new(otter_params)
    if @otter.valid?
      @otter.save
      flash[:notice] = "You have created an Otter!"
      redirect_to @otter
    else
      flash.now[:messages] = @otter.errors.full_messages
      render "new"
    end
  end
  
  def edit
    @otter = Otter.find(params[:id])
  end
  
  def update
    @otter = Otter.find(params[:id])
    if @otter.update(otter_params)
      flash[:notice] = "You have updated this Otter!"
      redirect_to @otter
    else
      flash.now[:messages] = @otter.errors.full_messages
      render "new"
    end
  end
  
  def destroy
    @otter = Otter.find(params[:id])
    @otter.destroy
    redirect_to root_path
  end

  private

    def otter_params
      params.require(:otter).permit(:name, :age, :cuteness, :softness)
    end
end