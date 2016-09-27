class ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    @image.save
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

  private
    def image_params
      params.require(:image).permit(:date, :route, :title)
    end
end
