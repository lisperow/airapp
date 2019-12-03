# frozen_string_literal: true

module Airapp
  module API
    Application = lambda do |*|
      require 'json'
      tickets = [
        { id: 1, number: 'ticket1' },
        { id: 2, number: 'ticket2' }
      ]
      [200, {}, [tickets.to_json]]
    end
  end
end

run Airapp::API::Application
