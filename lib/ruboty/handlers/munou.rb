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
        message.reply(what.response(message.body))
      end

      def what
        @what ||= WhatResponder.new
      end
    end
  end
end
