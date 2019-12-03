# frozen_string_literal: true

require 'rack/test'

RSpec.describe 'API' do
  subject(:response) { get '/' }

  include Rack::Test::Methods

  let(:app) {}

  specify do
    expect(response.status).to eq 200
    expect(response.body).to eq <<~JSON
      [{"id":1,"number":"ticket#1"},{"id":2,"number":"ticket#2"}]
    JSON
  end
end
