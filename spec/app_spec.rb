require "spec_helper"

describe "Recce App" do
  include Rack::Test::Methods

  describe "GET /" do
    it 'responds ok' do
      get '/'
      last_response.should be_ok
    end
  end
end
