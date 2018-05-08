class ChatChannel < ApplicationCable::Channel
  def subscribed
    byebug
    stream_from "my_channel_#{current_user.id}"
  end



end
