# frozen_string_literal: true

# Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the
# first half of the digits is equal to the sum of the second half.

# Given a ticket number n, determine if it's lucky or not.

def lucky?(tck)
  tck.digits.each_slice(tck.digits.size / 2).map(&:sum).uniq.size == 1
end

# Alternative explicit solution:

# def lucky?(tck)
#   tck = tck.digits
#   tck.shift(tck.size / 2).reduce(&:+) == tck.sum
# end
