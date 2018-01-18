class HomeController < ApplicationController
  def index
    @message = Message.new
    @images = Image.all().limit(5)
  end
  def terms
  end
  def admin
  end
end
