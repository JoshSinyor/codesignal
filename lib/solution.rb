# frozen_string_literal: true

def solution(input_string)
  (0...input_string.size).each do |i|
    palindrome = input_string + input_string[0...i].reverse
    return palindrome if palindrome == palindrome.reverse
  end
end

# Alternate solution looking for existing palindrome chunk from largest to smallest

# def solution(input_string)
#   (input_string.size - 1).downto(0).each do |i|
#     prospect = input_string.reverse[0..i]

#     return input_string + input_string.reverse[i + 1..] if prospect == prospect.reverse
#   end
# end
