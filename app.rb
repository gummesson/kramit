# Requirements
require 'rubygems'
require 'sinatra'
require 'kramdown'

# App Information
APP_NAME = "Kramit!"
APP_DESC = "Yet another Markdown preview app."

class Kramit < Sinatra::Application
  # Helpers
  helpers do
    def error(message)
      @message = message
      erb :error
    end
  end

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
end
