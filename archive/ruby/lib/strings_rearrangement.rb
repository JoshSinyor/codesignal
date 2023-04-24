# frozen_string_literal: true

# Given an array of equal-length strings, you'd like to know if it's possible to rearrange the order of the elements in
# such a way that each consecutive pair of strings differ by exactly one character. Return true if it's possible, and
# false if not.

# NOTE: You're only rearranging the order of the strings, not the order of the letters within the strings!

def strings_rearrangement(arr)
  arr.permutation.any? do |set|
    set.each_cons(2).all? { |wrd1, wrd2| DidYouMean::Levenshtein.distance(wrd1, wrd2) == 1 }
  end
end

# Alternative, slower solution:

# def strings_rearrangement(arr)
#     arr.permutation.any? do |set|
#         set.each_cons(2).all? do |wrd1, wrd2|
#             wrd1.chars.zip(wrd2.chars).count do |wrd1_char, wrd2_char|
#                 wrd1_char != wrd2_char
#             end == 1
#         end
#     end
# end
