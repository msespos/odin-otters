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
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end
