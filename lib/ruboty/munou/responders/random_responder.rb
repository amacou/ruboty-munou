module Munou
  module Responders
    class RandomResponder < Base
      def response(input)
        return dictionary.random
      end
    end
  end
end
