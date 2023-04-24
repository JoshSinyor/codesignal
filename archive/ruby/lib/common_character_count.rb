# frozen_string_literal: true

# Given two strings, find the number of common characters between them.

def common_character_count(str1, str2)
  ('a'..'z').map { |chr| [str1.chars.count(chr), str2.chars.count(chr)].min }.sum
end

# Alternative solution using variable:

# def common_character_count(str1, str2)
#   sum = 0
#   ('a'..'z').each { |character| sum += [str1.chars.count(character), str2.chars.count(character)].min }
#   sum
# end
