class ImagesController < ApplicationController
  before_action :find_image, only: [:show, :edit, :update, :destroy]

  def index
    @images = Image.all.order('created_at DESC')
  end

  def show
  	
  end

  def new
  	@image = Image.new
  end

  def create
    @image = Image.new(image_params)

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
      params.require(:image).permit(:title, :description)
    end

    def find_image
      @image = Image.find(params[:id])
    end

end
