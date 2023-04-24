# frozen_string_literal: true

# Given some integer, find the maximal number you can obtain by deleting exactly one digit of the given number.

def delete_digit(int)
  (0...int.digits.size).map { |i| int.to_s.chars.reject.with_index { |_, ii| ii == i }.join.to_i }.max
end

# Alternative solution with named array:

# def delete_digit(int)
#   sets = Array.new(int.digits.length) { int.to_s.chars }

#   (0...sets.length).map do |i|
#     sets[i].delete_at(i)
#     sets[i].join.to_i
#   end.max
# end
