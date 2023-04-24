# frozen_string_literal: true

# Given a string, find the number of different characters in it.

def different_symbols_naive(str)
  str.chars.uniq.size
end
