# Requirements
require 'rubygems'
require 'sinatra'
require 'kramdown'

# The name of the app
APP_NAME = "Kramit!"  

# Write
get '/' do
  erb :index
end

# Preview
post '/preview' do
  @preview = Kramdown::Document.new("#{params[:content]}", :auto_ids => false).to_html
  erb :preview, :layout => false
end
