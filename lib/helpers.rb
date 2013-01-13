helpers do
  # Display message
  def message(message)
    @message = message
    erb :message
  end

  # Kramdownify the content
  def kramdown(content)
    Kramdown::Document.new("#{content}").to_html
  end
end
