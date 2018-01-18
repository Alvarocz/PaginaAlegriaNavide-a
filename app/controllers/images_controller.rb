class ImagesController < ApplicationController
  def create
		puts image_params
    @image = Image.new(image_params)
    if !@image.save
      @error = @image.errors.full_messages.join('. ')
    end
    redirect_to gallery_path
  end
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    redirect_to gallery_path
  end
  def edit
    @image = Image.find(params[:id])
  end
  def index
		@images = Image.all
		respond_to do |format|
			format.html # Show index.html.erb
			format.json { render json: [@images, user_signed_in?] }
		end
  end
  def new
    @image = Image.new(title: "Imagen\##{1 + (Image.maximum(:id) || 0)}")
  end
  def show
    @image = Image.find(params[:id])
		respond_to do |format|
			format.json { render json: @image }
		end
  end
  def update
    @image = Image.find(params[:id])
    @image.update(image_params)

    redirect_to gallery_path
  end

  protected
  def direct_upload_mode?
    params[:direct].present?
  end

  def unsigned_mode?
    params[:unsigned].present?
  end

  private
    def image_params
      params.require(:image).permit(:image, :title)
    end
end
