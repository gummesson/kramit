# Requirements
require 'rubygems'
require 'sinatra'
require 'kramdown'

# App Information
APP_NAME = "Kramit!"
APP_DESC = "Yet another Markdown preview app."

class Kramit < Sinatra::Application
  # Index
  get '/' do
    erb :index
  end

  # Preview
  post '/preview' do
    @preview = Kramdown::Document.new("#{params[:content]}", :auto_ids => false).to_html
    erb :preview, :layout => false
  end

  not_found do
    @message = "Whoops! The requested route couldn't be found. Sorry!"
    erb :error
  end

  error do
    @message = "Whoops! An error occurred. Booooo!"
    erb :error
  end
end
