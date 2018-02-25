class ApplicationException < StandardError
  def response
    { code: @code,
      status: 'failure',
      message: @message,
      description: @description }
  end

  def status
    @status || 422
  end
end
