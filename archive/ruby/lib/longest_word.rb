# frozen_string_literal: true

# Define a word as a sequence of consecutive English letters. Find the longest word from the given string.

def longest_word(str)
  str.scan(/[a-zA-Z]+/).max_by(&:length)
end
