require 'sinatra'
require 'json'
require File.expand_path('../exercise', __FILE__)

map '/' do
  run Exercise
end
