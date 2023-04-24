# frozen_string_literal: true

# Check if the given string is a correct time representation of the 24-hour clock.

def valid_time(str)
  hr, min = str.split(':').map(&:to_i)
  hr.between?(0, 23) && min.between?(0, 59)
end

# Alternative solution using Time object:

# def valid_time(str)
#   Time.parse(str) && str != '24:00'
# rescue ArgumentError
#   false
# end

# Alternative solution using pattern matching:

# def valid_time(str)
#   case str.split(':').map(&:to_i)
#   in [(0..23), (0..59)]
#     true
#   else false
#   end
# end
