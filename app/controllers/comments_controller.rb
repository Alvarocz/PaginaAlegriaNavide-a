class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html
        format.json { render json: @comment.to_json }
      else
        format.html { render redirect_to: '/' }
        format.json { render json: @comment.errors }
      end
    end
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end
  def index
    @comments = Comment.order(created_at: :desc)
  end
  def new
    @comment = Comment.new
  end
  def show
    @comment = Comment.find(params[:id])
  end

  private
    def comment_params
      params.require(:comment).permit(:name, :email, :message)
    end
end
