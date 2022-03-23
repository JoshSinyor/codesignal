# frozen_string_literal: true

def solution(ticket)
  ticket = ticket.to_s.split('').map!(&:to_i)
  ticket.shift(ticket.size / 2).inject(&:+) == ticket.sum
end

# Alternate solution:

# def solution(ticket)
#   ticket = ticket.to_s.split('').map!(&:to_i)
#
#   first_half = ticket.slice!(0, (ticket.size / 2))
#   second_half = ticket
#
#   first_half.sum == second_half.sum
# end
