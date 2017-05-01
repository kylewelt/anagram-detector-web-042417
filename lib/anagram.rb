require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    matches = []

    anagrams.map do |word|
      # check if the word is an anagram of self.word

      needle = self.word.split("")
      haystack = word.split("")

      sorted_needle  = needle.sort
      sorted_haystack = haystack.sort

      if sorted_needle == sorted_haystack
        matches << word
      end
    end

    # binding.pry

    # return the matches
    matches
  end

end
