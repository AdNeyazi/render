class Api::V1::NewsroomController < ApplicationController
	before_action :set_news, only: [:show, :update, :destroy]

  def index
    @news = Newsroom.all
    render json: @news
  end

  def show
    render json: @news
  end

  def create
    @news = Newsroom.new(news_params)

    if @news.save
      render json: @news, status: :created
    else
      render json: @news.errors, status: :unprocessable_entity
    end
  end

  def update
    if @news.update(news_params)
      render json: @news
    else
      render json: @news.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @news.destroy
    head :no_content
  end

  private

  def set_news
    @news = Newsroom.find(params[:id])
  end

  def news_params
    params.require(:news).permit(:title, :event_image, :content, :post_date)
  end
end
