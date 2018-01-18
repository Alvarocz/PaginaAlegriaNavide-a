class VideosController < ApplicationController
  def create
    @video = Video.new(video_params)
    @video.save
    redirect_to videos_path
  end
  def destroy
    @video = Video.find(params[:id])
    @video.destroy
  end
  def edit
    @video = Video.find(params[:id])
  end
  def index
     @videos = Video.order(created_at: :desc)
  end
  def new
    @video = Video.new
  end
  def show
    @video = Video.find(params[:id])
  end
  def update
    @video = Video.find(params[:id])
    @video.update(video_params)

    redirect_to videos_path
  end

  private
    def video_params
      params.require(:video).permit(:title, :route, :comment)
    end
end
