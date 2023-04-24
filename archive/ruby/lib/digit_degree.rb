# frozen_string_literal: true

# Let's define digit degree of some positive integer as the number of times we need to replace this number with the sum
# of its digits until we get to a one digit number.

# Given an integer, find its digit degree.

def digit_degree(num)
  num <= 9 ? 0 : 1 + digit_degree(num.digits.sum)
end

# Alternative solution using iterator:

# def digit_degree(num)
#   i = 0

#   until num <= 9
#     num = num.digits.sum
#     i += 1
#   end

#   i
# end
