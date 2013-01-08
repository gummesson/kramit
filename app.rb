# Requirements
require 'rubygems'
require 'sinatra'
require 'kramdown'

# App 
APP_NAME = "Kramit!"
APP_DESC = "Yet another Markdown preview app."

# Index
get '/' do
  erb :index
end

# Preview
post '/preview' do
  @preview = Kramdown::Document.new("#{params[:content]}", :auto_ids => false).to_html
  erb :preview, :layout => false
end
