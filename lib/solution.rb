# frozen_string_literal: true

def solution(input_array)
  input_array.permutation.any? do |permutation|
    permutation.each_cons(2).all? { |word1, word2| DidYouMean::Levenshtein.distance(word1, word2) == 1 }
  end
end

# Alternate, slower solution

# def solution(inputArray)
#     inputArray.permutation.any? do |permutation|
#         permutation.each_cons(2).all? do |word1, word2|
#             word1.chars.zip(word2.chars).count do |word1_char, word2_char|
#                 word1_char != word2_char
#             end == 1
#         end
#     end
# end
