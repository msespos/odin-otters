class OttersController < ApplicationController
  def index
    @otters = Otter.all
  end
  
  def show
    @otter = Otter.find(params[:id])
  end
  
  def new
    @otter = Otter.new
  end
  
  def create
    @otter = Otter.new(otter_params)
    if @otter.save
      redirect_to @otter
    else
      render "new"
    end
  end
  
  def edit
    @otter = Otter.find(params[:id])
  end
  
  def update
    @otter = Otter.find(params[:id])
    if @otter.update(otter_params)
      redirect_to @otter
    else
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