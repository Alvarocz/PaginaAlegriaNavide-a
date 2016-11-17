class PresentationsController < ApplicationController
  def create
    @presentation = Presentation.new(presentation_params)
    @presentation.save
    redirect_to presentations_path
  end
  def destroy
    @presentation = Presentation.find(params[:id])
    @presentation.destroy
  end
  def edit
    @presentation = Presentation.find(params[:id])
  end
  def index
     @presentations = Presentation.order(datetime: :asc)
  end
  def new
    @presentation = Presentation.new
  end
  def show
    @presentation = Presentation.find(params[:id])
  end
  def update
    @presentation = Presentation.find(params[:id])
    @presentation.update(presentation_params)

    redirect_to presentations_path
  end

  private
    def presentation_params
      params.require(:presentation).permit(:title, :site, :p_type, :datetime, :contributors, :comment)
    end
end
