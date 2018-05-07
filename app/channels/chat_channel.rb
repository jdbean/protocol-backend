class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "my_channel_#{current_user.id}"
  end
end
