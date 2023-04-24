# frozen_string_literal: true

# After becoming famous, the CodeBots decided to move into a new building together. Each of the rooms has a different
# cost, and some of them are free, but there's a rumour that all the free rooms are haunted! Since the CodeBots are
# quite superstitious, they refuse to stay in any of the free rooms, or any of the rooms below any of the free rooms.

# Given matrix, a rectangular matrix of integers, where each value represents the cost of the room, your task is to
# return the total sum of all rooms that are suitable for the CodeBots (ie: add up all the values that don't appear
# below a 0).

def matrix_element_sum(matrix)
  matrix.transpose.map { |row| row.take_while { |room| !room.zero? } }.flatten.sum
end

# Alternative solution using variable:

# def matrix_element_sum(matrix)
#   sum = 0
#   matrix.transpose.each { |row| row.each.select { |room| room.zero? ? break : sum += room } }
#   sum
# end
