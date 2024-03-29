# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json
  before_action :verify_signed_out_user, only: :destroy

  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def destroy
    respond_to do |format|
      format.html { super }
      format.json { head :no_content }
    end
  end

  # DELETE /resource/sign_out
  def destroy
    # super
  end

  private

  def respond_with(current_user, _opts = {})
    render json: {
      status: { 
        code: 200,
        message: 'Logged in successfully.',
        data: {
          user: {
            id: current_user.id,
            email: current_user.email
          },
          jti: current_user.jti
        }
      }
    }, status: :ok
  end

  def respond_to_on_destroy
    if request.headers['Authorization'].present?
      jwt_token = request.headers['Authorization'].split(' ').last
      jwt_payload, _ = JWT.decode(jwt_token, Rails.application.config.credentials.devise_jwt_secret_key)

      # Invalidate the token by updating the jti field in the user model
      current_user = User.find(jwt_payload['sub'])
      current_user.update(jti: SecureRandom.uuid)

      render json: {
        status: 200,
        message: 'Logged out successfully.'
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "Couldn't find an active session."
      }, status: :unauthorized
    end
  end


  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :password_confirmation])
  end
end
