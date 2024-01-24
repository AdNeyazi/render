class Api::V1::MessageHeadsController < ApplicationController
	before_action :set_message_head, only: [:show, :update, :destroy]

  def index
    @message_heads = MessageHead.all
    render json: @message_heads
  end

  def show
    render json: @message_head
  end

  def create
    @message_head = MessageHead.new(message_head_params)

    if @message_head.save
      render json: @message_head, status: :created
    else
      render json: @message_head.errors, status: :unprocessable_entity
    end
  end

  def update
    if @message_head.update(message_head_params)
      render json: @message_head
    else
      render json: @message_head.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @message_head.destroy
    head :no_content
  end

  private

  def set_message_head
    @message_head = MessageHead.find(params[:id])
  end

  def message_head_params
    params.require(:message_head).permit(:title, :photo, :description, :name, :department, :post, :university)
  end
end
