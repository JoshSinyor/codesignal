# frozen_string_literal: true

# Determine if the given character is a digit or not.

def solution(symbol)
  symbol.match?(/\d/)
end

# Alternate solution using ternary operator
#
# symbol =~ /\d/ ? true : false
