# frozen_string_literal: true

# Given a string, find out if its characters can be rearranged to form a palindrome.

def palindrome_rearranging(str)
  str.chars.uniq.map { |chr| str.count(chr) }.count(&:odd?) < 2
end
