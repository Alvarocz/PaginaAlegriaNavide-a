class VideosController < ApplicationController
  def create
    @video = Video.new(video_params)
    @video.save
    redirect_to videos_path
  end
  def destroy
    @prensentation = Video.find(params[:id])
    @video.destroy
  end
  def index
     @videos = Video.order(created_at: :desc)
  end
  def new
    @video = Video.new
  end
  def show
    @prensentation = Video.find(params[:id])
  end

  private
    def video_params
      params.require(:video).permit(:title, :route)
    end
end
