class Api::V1::QuerySendsController < ApplicationController
	# GET /query_sends
  def index
    query_sends = QuerySend.all
    render json: query_sends
  end

  # GET /query_sends/:id
  def show
    query_send = QuerySend.find(params[:id])
    render json: query_send
  end

  # POST /query_sends
  def create
    query_send = QuerySend.new(query_send_params)

    if query_send.save
      render json: query_send, status: :created
    else
      render json: { errors: query_send.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /query_sends/:id
  def update
    query_send = QuerySend.find(params[:id])

    if query_send.update(query_send_params)
      render json: query_send
    else
      render json: { errors: query_send.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /query_sends/:id
  def destroy
    query_send = QuerySend.find(params[:id])
    query_send.destroy
    head :no_content
  end

  private

  def query_send_params
    params.permit(:name, :email, :contact_no, :subject, :message)
  end
end
