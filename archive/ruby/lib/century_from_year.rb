# frozen_string_literal: true

# Given a year, return the century it is in. The first century spans from the year 1 up to and including the year 100,
# the second - from the year 101 up to and including the year 200, etc.

def century_from_year(year)
  ((year - 1) / 100) + 1
end

# Alternative solution:

# def century_from_year(year)
#   (year % 100).zero? ? year / 100 : year / 100 + 1
# end
