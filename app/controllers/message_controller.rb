class MessageController < ApplicationController
before_action :set_group
  def index
    @message = Message.new(message_params)
  end

  def create
    @message = Message.new(message_params)
  end

private
  def message_params
    params.require(:group).permit(:name, user_ids: [] )
  end
  
  def set_group
    @group = Group.find(params[:group_id])
  end
end
