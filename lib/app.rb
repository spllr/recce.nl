require "sinatra/base"
require "sinatra/reloader" if ENV['RACK_ENV'] == 'development'
require "haml"
require "sass"
require "padrino-helpers"

module Recce
  class App < Sinatra::Base
    register Padrino::Helpers

    set :public, File.expand_path('../../public', __FILE__)

    configure :development do
      register Sinatra::Reloader
    end

    get "/" do
      haml :index
    end
  end
end

