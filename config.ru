require 'rubygems'
require "bundler"

Bundler.require
Mosaic.set_root File.dirname(__FILE__)

require './config/mosaic'

require 'mosaic/application'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets'
  run environment
end

run Mosaic::Application