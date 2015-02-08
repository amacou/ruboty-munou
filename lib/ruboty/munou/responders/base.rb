module Munou
  module Responders
    class Base
      def initialize(dictionary)
        @dictionary = dictionary
      end

      def response(input)
        return ''
      end
    end
  end
end
