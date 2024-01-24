class Api::V1::PresidentMessagesController < ApplicationController
	before_action :set_president_message, only: [:show, :update, :destroy]

  def index
    @president_messages = PresidentMessage.all
    render json: @president_messages
  end

  def show
    render json: @president_message
  end

  def create
    @president_message = PresidentMessage.new(president_message_params)

    if @president_message.save
      render json: @president_message, status: :created
    else
      render json: @president_message.errors, status: :unprocessable_entity
    end
  end

  def update
    if @president_message.update(president_message_params)
      render json: @president_message
    else
      render json: @president_message.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @president_message.destroy
    head :no_content
  end

  private

  def set_president_message
    @president_message = PresidentMessage.find(params[:id])
  end

  def president_message_params
    params.require(:president_message).permit(:title, :photo, :description, :name, :post)
  end
end

