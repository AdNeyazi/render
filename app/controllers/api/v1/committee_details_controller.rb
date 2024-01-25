class Api::V1::CommitteeDetailsController < ApplicationController
	before_action :set_committee_detail, only: [:show, :update, :destroy]

	def index
		committee_details = CommitteeDetail.all
		render json: committee_details
	end

	def show
		render json: @committee_detail
	end

	def create
		committee_detail = CommitteeDetail.new(committee_detail_params)

		if committee_detail.save
			render json: committee_detail, status: :created
		else
			render json: committee_detail.errors, status: :unprocessable_entity
		end
	end

	def update
		if @committee_detail.update(committee_detail_params)
			render json: @committee_detail
		else
			render json: @committee_detail.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@committee_detail.destroy
		head :no_content
	end

	private

	def set_committee_detail
		@committee_detail = CommitteeDetail.find(params[:id])
	end

	def committee_detail_params
		params.require(:committee_detail).permit(:name, :contact_details, :telephone, :vision, :mission)
	end
end
