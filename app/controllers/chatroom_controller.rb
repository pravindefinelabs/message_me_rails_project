class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    # @messages = Message.all
    @messages = Message.order(created_at: :desc).limit(30).reverse
  end
end
