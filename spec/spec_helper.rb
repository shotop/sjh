require "rails/application"
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end