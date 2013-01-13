# Index
get '/' do
  erb :index
end

# Preview
post '/preview' do
  @preview = Kramdown::Document.new("#{params[:content]}", :auto_ids => false).to_html
  erb :preview, :layout => false
end

# Not Found
not_found do
  error("Whoops! The requested route couldn't be found. Sorry!")
end

# Error
error do
  error("Whoops! An error occurred. Booooo!")
end
