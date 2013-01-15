# Gem requirements
require 'rubygems'
require 'sinatra'
require 'kramdown'

# App information
APP_NAME = "Kramit!"
APP_DESC = "Yet another Markdown preview app."

# Set app directory as root
$:.unshift File.dirname(__FILE__)

# App requirements
require 'lib/helpers'
require 'lib/routes'
