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
        body = message.body.gsub(/#{robot.name}[ :_-]/,'')
        response = pattern.response(body)
        response = template.response(body) unless response
        response = meaningless.response(body) unless response
        message.reply(response)
      end

      def pattern
        @pattern ||= PatternResponder.new(ENV['MUNOU_PATTERN_DICTIONARY'])
      end

      def template
        @template ||= TemplateResponder.new(ENV['MUNOU_TEMPLATE_DICTIONARY'])
      end

      def meaningless
        rand(1) == 0 ? what : random
      end

      def what
        @what ||= WhatResponder.new
      end

      def random
        @rundom ||= RandomResponder.new(ENV['MUNOU_DANDOM_DICTIONARY'])
      end
    end
  end
end
