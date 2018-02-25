class ApplicationController < ActionController::API
  include Clearance::Controller
  rescue_from ApplicationException, with: :show_exception

  protected

  def show_exception(exception)
    render json: exception.response, status: exception.status
  end
end
