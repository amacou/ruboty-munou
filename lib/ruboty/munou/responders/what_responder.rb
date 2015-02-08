module Munou
  module Responders
    class WhatResponder < Base
      def response(input)
        return "#{input}ってなに？"
      end
    end
  end
end
