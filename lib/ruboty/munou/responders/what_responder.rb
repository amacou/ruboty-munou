module Munou
  module Responders
    class WhatResponder < Base
      def response(input)
        "#{input}ってなに？"
      end
    end
  end
end
