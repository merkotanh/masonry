class PinsController < ApplicationController
  before_action :find_image, only: [:show, :edit, :update, :destroy]

  def index
    @images = Pin.all.order('created_at DESC')
  end

  def show
  	
  end

  def new
  	@image = Pin.new
  end

  def create
    @image = Pin.new(image_params)

    if @image.save
      redirect_to @image, notice: 'Success'    	
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @image.update(image_params)
      redirect_to @image, notice: 'Success'
    else
      render 'edit'
    end
  end

  def destroy
    @image.destroy
    redirect_to root_path
  end

  private
    
    def image_params
      params.require(:pin).permit(:title, :description, :image)
    end

    def find_image
      @image = Pin.find(params[:id])
    end

end
