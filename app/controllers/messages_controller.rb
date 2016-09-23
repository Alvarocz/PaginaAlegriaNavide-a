class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    puts params
    respond_to do |format|
      if @message.save
        format.json { render json: @message.to_json }
      else
        format.html { render redirect_to: '/' }
        format.json { render json: @message.errors }
      end
    end
  end
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_path
  end
  def index
    @messages = Message.all
  end
  def new
    @message = Message.new
  end
  def show
    @message = Message.find(params[:id])
  end

  private
    def message_params
      params.require(:message).permit(:name, :email, :number, :text)
    end
end
