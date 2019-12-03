# frozen_string_literal: true

require 'airapp/api/application'
require 'rack/test'

RSpec.describe Airapp::API::Application do
  subject(:response) { get '/' }

  include Rack::Test::Methods

  let(:app) { Airapp::API::Application }

  describe 'GET /' do
    specify do
      expect(response.status).to eq 200
      expect(response.body).to eq <<~JSON.strip
        [{"id":1,"number":"ticket1"},{"id":2,"number":"ticket2"}]
      JSON
    end
  end
end
