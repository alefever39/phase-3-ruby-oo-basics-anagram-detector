require "pry"

class Anagram
  def initialize(word)
    @word = word
  end

  def match(match_list)
    match_list.filter do |possible_match|
      split_word = @word.split("")
      split_possible = possible_match.split("")
      split_word.sort == split_possible.sort
    end
  end
end
