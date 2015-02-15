module Munou
  module Responders
    class PatternResponder < Base
      def response(input)
        dictionary.keys.each do |key|
          if m = input.match(key)
            res = dictionary[key].sample
            next if res.nil?
            return res.gsub(/%match%/, m.to_s)
          end
        end

        nil
      end
    end
  end
end
