class HomeController < ApplicationController
  def index
    @message = Message.new
  end
  def terms
  end
end
