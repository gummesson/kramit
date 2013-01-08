# Requirements
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'kramdown'

# App Information
APP_NAME = "Kramit!"
APP_DESC = "Yet another Markdown preview app."

class Kramit
  # Index
  get '/' do
    erb :index
  end

  # Preview
  post '/preview' do
    @preview = Kramdown::Document.new("#{params[:content]}", :auto_ids => false).to_html
    erb :preview, :layout => false
  end
end

Kramit.new
