# frozen_string_literal: true

def solution(input_number)
  input_number <= 9 ? 0 : 1 + solution(input_number.digits.reduce(:+))
end

# Alternative solution

# def solution(input_number)
#   iterations = 0

#   until input_number <= 9
#     input_number = input_number.digits.sum
#     iterations += 1
#   end

#   iterations
# end
