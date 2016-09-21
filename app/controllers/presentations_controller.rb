class PresentationsController < ApplicationController
  def index
     @presentations = Presentation.all
  end

  def new
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.create(presentation_params)
  end

  def presentation_params
    params.require(:presentation).permit(:date, :presentation_id, :route, :title)
  end
end
