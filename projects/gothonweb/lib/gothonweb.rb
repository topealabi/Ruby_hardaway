
#require_relative "gothonweb/version"
require "sinatra"
require "haml"

#module Gothonweb
  get '/' do
    greeting = "Hello, World!"
    erb :index, :locals => {:greeting => greeting}
  end
#end

