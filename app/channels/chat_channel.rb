class ChatChannel < ApplicationCable::Channel
    def subscribed
      stream_from "chat_#{params[:room]}"
    end

    def receive(data)
      ActionCable.server.broadcast "chat_#{params[:room]}", data
    end
end

# channel.send({to: 'chat_new_room', message: "Hello New Room!"})
