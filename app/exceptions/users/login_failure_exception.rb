module Users
  class LoginFailureException < ApplicationException
    def initialize
      @code = 2
      @message = 'Could not validate user/password'
      @description = 'Please check if your email/password are correct.'
      @status = 401
    end
  end
end
