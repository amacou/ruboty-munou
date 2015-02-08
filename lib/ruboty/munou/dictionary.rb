module Munou
  class Dictionary
    def initialize
      load_random
    end

    def random
      @random.sample
    end

    def load_random
      @random = []
      begin
        open(File.expand_path('dictionaries/random.txt', File.dirname(__FILE__))) do |f|
          f.each do |line|
            line.chomp!
            next if line.empty?
            @random.push(line)
          end
        end
      rescue => e
        puts(e.message)
        @random.push('こんにちは')
      end
    end
  end
end
