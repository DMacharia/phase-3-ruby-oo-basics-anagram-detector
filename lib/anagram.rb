require "pry"
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(anagram)
        anagram.select {|anagchars| anagchars.chars.sort == word.chars.sort}
    end
end

listen = Anagram.new("listen")
ba = Anagram.new("ba")
puts ba.match(%w[ab abc back])
puts listen.match(%w[enlists google inlets banana])

