module Munou
  module Responders
    class TemplateResponder < Base
      def response(input)
        keywords = extract_keyword(input)

        if keywords.size > 0 and templates = dictionary[keywords.size]
          template = templates.sample
          return template.gsub(/%noun%/){keywords.shift.surface}
        end

        nil
      end

      def extract_keyword(input)
        natto.enum_parse(input.gsub(/[[:punct:]]/,'')).select do |n|
          /名詞,(一般|固有名詞|サ変接続|形容動詞語幹)/ =~ n.feature
        end
      end

      def natto
        @natto ||= Natto::MeCab.new
      end
    end
  end
end
