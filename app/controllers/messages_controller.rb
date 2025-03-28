class MessagesController < ApplicationController
  before_action :require_user

  def new
    @messages = Message.order(created_at: :desc).page(params[:page]).per(15)
  end

  def create
    message = current_user.messages.build(message_params)
    if message.save
      # redirect_to root_path
      ActionCable.server.broadcast "chatroom_channel",
                                   mod_message: message_render(message)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: "message", locals: { message: message })
  end
end
