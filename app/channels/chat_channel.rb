class ChatChannel < ApplicationCable::Channel

  # @@members = {}
  # Temporary storage of subscriptions list
  # Pending multi-channel features and persistence

  def subscribed
    @user = User.find_by(name: params[:username])
    @channel = Channel.find_or_create_by(title: params[:room])
    # @membership = Membership.new(user: @user, channel: @channel)
    @user.channels << @channel

    # if !@@members["chat_#{params[:room]}"]
    #   @@members["chat_#{params[:room]}"] = Array.new
    # end
    # @@members["chat_#{params[:room]}"] << params[:username]
    # @@members["chat_#{params[:room]}"] = @@members["chat_#{params[:room]}"].uniq

    stream_from "chat_#{params[:room]}"
  end

  def unsubscribe

  end

  def receive(data)
    # byebug
    @user = User.find_by(name: params[:username])
    @channel = Channel.find_or_create_by(title: params[:room])
    @message_data = {user: @user, body: data["message"], channel: @channel}
    data["message_type"] = "message"
    @message = Message.new(@message_data)


    if @message.save
      ActionCable.server.broadcast "chat_#{params[:room]}", data
    else
      ActionCable.server.broadcast "chat_#{params[:room]}", {message_type: "message_error", errors: @message.errors, notice: "errors", status: :unprocessable_entity}
    end
  end
end

# channel.send({to: 'chat_new_room', message: "Hello New Room!"})
