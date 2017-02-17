class ApplicationController < ActionController::API
  before_action :authenticate_request
  def current_user
    #logger.debug "ApplicationController#current_user #{@current_user.inspect}"
    @current_user
  end

  private

  def authenticate_request
    begin
      #logger.debug "ApplicationController#autheniticate_request"
      @current_user = AuthorizeApiRequest.new(request.headers).call
      #logger.debug "ApplicationController#autheniticate_request #{@current_user.inspect}"
      #@current_user
    rescue
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
  end
end
