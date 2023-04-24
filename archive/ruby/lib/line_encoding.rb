# frozen_string_literal: true

# Given a string, return its encoding defined as follows:
#  First, the string is divided into the least possible number of disjoint substrings consisting of identical characters
#    for example, "aabbbc" is divided into ["aa", "bbb", "c"]
#  Next, each substring with length greater than one is replaced with a concatenation of its length and the repeating
#  character
#    for example, substring "bbb" is replaced by "3b"
#  Finally, all the new strings are concatenated together in the same order and a new string is returned.

def line_encoding(str)
  str.gsub(/(.)\1+/) { |sub| "#{sub.length}#{Regexp.last_match(1)}" }
end

# Alternative solution using scan method and regex:

# def line_encoding(str)
#   out = ''
#   str.scan(/(.)(\1*)/).each { |ele| out += ele[1].empty? ? ele[0] : "#{ele[1].length + 1}#{ele[0]}" }
#   out
# end
