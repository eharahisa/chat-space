class MessagesController < ApplicationController
  def index
  end

  def create
   message = Message.create(message_params)
   redirect_to "/groups/#{message.group.id}"
  end

  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id, group_id: params[:group_id])
  end
end
