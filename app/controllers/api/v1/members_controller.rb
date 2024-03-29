class Api::V1::MembersController < ApplicationController
	before_action :set_member, only: [:show, :update, :destroy]
	before_action :set_members_to_delete, only: [:delete_multiple]



	def index
		@members = Member.all
		render json: @members
	end

	def show
		render json: @member
	end

	def create
		@member = Member.new(member_params)

		if @member.save
			render json: @member, status: :created
		else
			render json: @member.errors, status: :unprocessable_entity
		end
	end

	def update
		if @member.update(member_params)
			render json: @member
		else
			render json: @member.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@member.destroy
		head :no_content
	end

 def delete_multiple
    member_ids_to_delete = (1..39).to_a

    if member_ids_to_delete.present?
      Member.where(id: member_ids_to_delete).destroy_all
      render json: { message: 'Successfully deleted members 1 to 39.' }
    else
      render json: { message: 'No members to delete.' }
    end
  end

	private

	def set_member
		@member = Member.find(params[:id])
	end

	def member_params
		params.require(:member).permit(:member_name, :course, :member_image_url, :year_of_passing, :about_u_id)
	end
end
