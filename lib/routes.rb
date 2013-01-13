# Index
get '/' do
  erb :index
end

# Preview
post '/preview' do
  @preview = kramdown(params[:content])
  erb :preview, :layout => false
end

# Not Found
not_found do
  message("Whoops! The requested route couldn't be found. Sorry!")
end

# Error
error do
  message("Whoops! An error occurred. Booooo!")
end
