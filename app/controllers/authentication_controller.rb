class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    begin
      token = AuthenticateUser.new(params[:email], params[:password]).call
      render json: { auth_token: token }
    rescue StandardError => e
      render json: { error: e.message }, status: :unauthorized
    end
  end
end
