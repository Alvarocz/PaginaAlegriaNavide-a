class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(image_params)
  end

  private
    def image_params
      params.require(:image).permit(:date, :presentation_id, :route, :title)
    end

end
