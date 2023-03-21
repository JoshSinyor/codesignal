# frozen_string_literal: true

# Given a string, return its encoding defined as follows:
#  First, the string is divided into the least possible number of disjoint substrings consisting of identical characters
#    for example, "aabbbc" is divided into ["aa", "bbb", "c"]
#  Next, each substring with length greater than one is replaced with a concatenation of its length and the repeating
#  character
#    for example, substring "bbb" is replaced by "3b"
#  Finally, all the new strings are concatenated together in the same order and a new string is returned.

def solution(input_string)
  input_string.gsub(/(.)\1+/) { |substring| "#{substring.size}#{Regexp.last_match(1)}" }
end

# Alternative solution using scan method and regex

# def solution(input_string)
#   output_string = ''

#   input_string.scan(/(.)(\1*)/).each do |element|
#     output_string += element[1].empty? ? element[0] : "#{element[1].length + 1}#{element[0]}"
#   end

#   output_string
# end
