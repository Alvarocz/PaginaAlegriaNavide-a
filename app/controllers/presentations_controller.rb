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

  private
    def presentation_params
      params.require(:presentation).permit(:site, :date, :contributors)
    end

end
