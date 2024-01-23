class Api::V1::FundAppealsController < ApplicationController
	before_action :set_fund_appeal, only: [:show, :update, :destroy]

  def index
    @fund_appeals = FundAppeal.all
    render json: @fund_appeals
  end

  def show
    render json: @fund_appeal
  end

  def create
    @fund_appeal = FundAppeal.new(fund_appeal_params)

    if @fund_appeal.save
      render json: @fund_appeal, status: :created
    else
      render json: @fund_appeal.errors, status: :unprocessable_entity
    end
  end

  def update
    if @fund_appeal.update(fund_appeal_params)
      render json: @fund_appeal
    else
      render json: @fund_appeal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @fund_appeal.destroy
    head :no_content
  end

  private

  def set_fund_appeal
    @fund_appeal = FundAppeal.find(params[:id])
  end

  def fund_appeal_params
    params.require(:fund_appeal).permit(:title, :content, :beneficiary_name, :bank_name, :bank_address, :account_number, :IFSC_code, :name, :email, :mobile_no)
  end
end
