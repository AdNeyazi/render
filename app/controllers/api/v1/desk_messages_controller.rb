class Api::V1::DeskMessagesController < ApplicationController
	before_action :set_desk_message, only: [:show, :update, :destroy]

  def index
    @desk_messages = DeskMessage.all
    render json: @desk_messages
  end

  def show
    render json: @desk_message
  end

  def create
    @desk_message = DeskMessage.new(desk_message_params)

    if @desk_message.save
      render json: @desk_message, status: :created
    else
      render json: @desk_message.errors, status: :unprocessable_entity
    end
  end

  def update
    if @desk_message.update(desk_message_params)
      render json: @desk_message
    else
      render json: @desk_message.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @desk_message.destroy
    head :no_content
  end

  private

  def set_desk_message
    @desk_message = DeskMessage.find(params[:id])
  end

  def desk_message_params
    params.require(:desk_message).permit(:name, :photo, :description, :title)
  end
end
