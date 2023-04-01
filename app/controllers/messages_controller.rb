class MessagesController < ApplicationController
  before_action :authenticate_user!, only: ["index"]

  def index
    messages = Message.includes(:user)
    messages_array = messages.map do |message|
      {
        id: message.id,
        user_id: message.user_id,
        name: message.user.name,
        content: message.content,
        email: message.user.email,
        created_at: message.created_at
      }
    end

    render :json => messages_array, :status => :ok
  end
end
