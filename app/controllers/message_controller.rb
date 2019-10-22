
class MessageController < ApplicationController
  def index
    @message = Message.new
  end
end
