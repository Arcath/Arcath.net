require 'rubygems'
require "bundler"

Bundler.require
Mosaic.set_root File.dirname(__FILE__)

require './config/mosaic'

require 'mosaic/application'

run Mosaic::Application