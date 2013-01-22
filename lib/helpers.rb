helpers do
  # Displays a message
  #
  # message = The given message. Redirects to another page with a different
  #           layout to display the message.
  #
  def message(message)
    @message = message
    erb :message
  end

  # Parses the Markdown content
  #
  # content = The given content. Returns the the Markdown content 
  #           parsed to HTML via the kramdown gem.
  #
  def kramdown(content)
    Kramdown::Document.new("#{content}").to_html
  end
end
