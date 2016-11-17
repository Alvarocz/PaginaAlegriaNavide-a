class PresentationsController < ApplicationController
  def create
    @presentation = Presentation.new(presentation_params)
    @presentation.save
    redirect_to presentations_path
  end
  def destroy
    @prensentation = Presentation.find(params[:id])
    @presentation.destroy
  end
  def index
     @presentations = Presentation.order(datetime: :desc)
  end
  def new
    @presentation = Presentation.new
  end
  def show
    @prensentation = Presentation.find(params[:id])
  end

  private
    def presentation_params
      params.require(:presentation).permit(:title, :site, :p_type, :datetime, :contributors, :comment)
    end
end
