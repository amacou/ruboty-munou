module Ruboty
  module Handlers
    class Munou < Base
      include ::Munou::Responders

      on(
        /.+/,
        description: "talk",
        name: "talk",
        missing: true
      )

      def talk(message)
        case rand(2)
        when 0
          message.reply(what.response(message.body))
        else
          message.reply(random.response(message.body))
        end
      end

      def what
        @what ||= WhatResponder.new
      end

      def random
        @rundom ||= RandomResponder.new
      end
    end
  end
end
