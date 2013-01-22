# Gems
require 'rubygems'
require 'sinatra'
require 'kramdown'

# Information
APP_NAME = "Kramit!"
APP_DESC = "Yet another Markdown preview app."

# Set app directory as root
$:.unshift File.dirname(__FILE__)

# App Library
require 'lib/helpers'
require 'lib/routes'
