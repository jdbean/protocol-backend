class ChannelsController < ApplicationController
  before_action :set_channel, only: [:show, :update, :destroy]

  # GET /messages
  def index
    @channels = Channel.all

    render json: @channels
  end

  # GET /messages/1
  def show
    # byebug
    render json: @channel
  end

  # POST /messages
  def create
    @channel = Channel.new(channel_params)

    if @channel.save
      render json: @channel, status: :created, location: @channel
    else
      render json: @channel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/1
  def update
    if @channel.update(channel_params)
      render json: @channel
    else
      render json: @channel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messages/1
  def destroy
    @channel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_channel
      @channel = Channel.find_by(title: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def channel_params
      params.require(:channel).permit(:title)
    end
end
