# frozen_string_literal: true

# Given a string, find the shortest possible string which can be achieved by adding characters to the end of initial
# string to make it a palindrome.

def build_palindrome(str)
  (0...str.size).each do |i|
    pal = str + str[0...i].reverse
    return pal if pal == pal.reverse
  end
end

# Alternative solution looking for existing palindrome chunk from largest to smallest:

# def build_palindrome(str)
#   (str.size - 1).downto(0).each do |i|
#     prospect = str.reverse[0..i]

#     return str + str.reverse[i + 1..] if prospect == prospect.reverse
#   end
# end
