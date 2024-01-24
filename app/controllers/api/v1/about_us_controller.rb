class Api::V1::AboutUsController < ApplicationController
	 before_action :set_about_us, only: [:show, :update, :destroy]

  def index
    @about_us_entries = AboutUs.all
    render json: @about_us_entries
  end

  def show
    render json: @about_us_entry
  end

  def create
    @about_us_entry = AboutUs.new(about_us_params)
    
    if @about_us_entry.save
      render json: @about_us_entry, status: :created, location: @about_us_entry
    else
      render json: @about_us_entry.errors, status: :unprocessable_entity
    end
  end

  def update
    if @about_us_entry.update(about_us_params)
      render json: @about_us_entry
    else
      render json: @about_us_entry.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @about_us_entry.destroy
  end

  private

  def set_about_us
    @about_us_entry = AboutUs.find(params[:id])
  end

  def about_us_params
    params.require(:about_us).permit(:title, :description)
  end
end

