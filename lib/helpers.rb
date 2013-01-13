helpers do
  def error(message)
    @message = message
    erb :error
  end
end
