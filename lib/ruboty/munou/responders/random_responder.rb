module Munou
  module Responders
    class RandomResponder < Base
      def response(input)
        dictionary.sample
      end
    end
  end
end
