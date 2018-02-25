class Api::V1::UserSessionsController < ApplicationController
  before_action :set_user, only: [:login]
  def login
    if @user&.authenticated?(params[:password])
      render json: {
        response: 
        @user.as_json(only: %i[id created_at updated_at email]),
        code: 0,
        status: "success"
      }
    else
      raise Users::LoginFailureException
    end
  end

  private

  def set_user
    @user = User.find_by_email params[:email].downcase
  end
end
