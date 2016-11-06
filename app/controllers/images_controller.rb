class ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to gallery_path
  end
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
  end
  def index
    @images = Image.all
  end
  def new
    @image = Image.new
  end
  def show
    @image = Image.find(params[:id])
  end

  private
    def image_params
      params.require(:image).permit(:date, :route, :title, :presentation_id)
    end
end
