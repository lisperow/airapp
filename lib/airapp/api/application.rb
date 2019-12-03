# frozen_string_literal: true

require 'json'

module Airapp
  module API
    Application = lambda do |*|
      tickets = [
        { id: 1, number: 'ticket1' },
        { id: 2, number: 'ticket2' }
      ]
      [200, {}, [tickets.to_json]]
    end
  end
end
