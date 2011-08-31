$: << File.expand_path('../../lib', __FILE__)

require "rspec"
require "rack/test"

require "app"

def app
  Recce::App
end
