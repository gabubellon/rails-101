class ImagesController < ApplicationController
  before_action :set_image, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[show_my_images] # Add a Skip to device auth when call show_my_images

  def index
    @images = current_user.images
  end

  def show; end

  def new
    @image = Image.new
  end

  def edit; end

  def create
    if ImageService.create(image_params)
      redirect_to action: 'index'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if ImageService.update(image_params)
      redirect_to action: 'index'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @image.destroy
    redirect_to images_url, notice: 'Imagem deletada!'
  end

  # Define a controler has return a json with all images
  def show_my_images
    render json: Image.all.map { |image| { title: image.title, id: image.id } }
  end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:title, :file, :user_id)
  end
end

