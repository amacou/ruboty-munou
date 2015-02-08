module Munou
  module Responders
    class Base
      attr_reader :dictionary

      def initialize(dictionary = nil)
        @dictionary = dictionary
        @dictionary ||= ::Munou::Dictionary.new
      end

      def response(input)
        return ''
      end
    end
  end
end
