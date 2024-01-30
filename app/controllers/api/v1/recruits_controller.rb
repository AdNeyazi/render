class Api::V1::RecruitsController < ApplicationController
	# protect_from_forgery with: :null_session

  # GET /recruits
  def index
    recruits = Recruit.all
    render json: recruits
  end

  # GET /recruits/:id
  def show
    recruit = Recruit.find(params[:id])
    render json: recruit
  end

  # POST /recruits
  def create
    recruit = Recruit.new(recruit_params)

    if recruit.save
      render json: recruit, status: :created
    else
      render json: { errors: recruit.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recruits/:id
  def update
    recruit = Recruit.find(params[:id])

    if recruit.update(recruit_params)
      render json: recruit
    else
      render json: { errors: recruit.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /recruits/:id
  def destroy
    recruit = Recruit.find(params[:id])
    recruit.destroy
    head :no_content
  end

  private

  def recruit_params
    params.permit(:name, :email_id, :contact_no, :company_name, :role, :message)
  end
end
