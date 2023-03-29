# frozen_string_literal: true

# Check if the given string is a correct time representation of the 24-hour clock.

def solution(input_string)
  hours, minutes = input_string.split(':').map(&:to_i)
  hours.between?(0, 23) && minutes.between?(0, 59)
end

# Alternative solution using pattern matching:

# def solution(input_string)
#   case input_string.split(':').map(&:to_i)
#   in [(0..23), (0..59)]
#     true
#   else false
#   end
# end

# Alternative solution using Time object:

# def solution(input_string)
#   Time.parse(input_string) && input_string != '24:00'
# rescue ArgumentError
#   false
# end
