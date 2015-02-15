require 'yaml'

module Munou
  module Responders
    class Base
      attr_reader :dictionary

      def initialize(dictionary_path = nil)
        load_dictionary(dictionary_path || default_dictionary_path)
      end

      def response(input)
        ''
      end

      def load_dictionary(dictionary_path)
        if File.exist? dictionary_path
          @dictionary = YAML.load_file dictionary_path
        end
      end

      def default_dictionary_path
        File.expand_path("../dictionaries/#{self.class.to_s.split(':').last.downcase.gsub('responder','')}.yml", File.dirname(__FILE__))
      end
    end
  end
end
