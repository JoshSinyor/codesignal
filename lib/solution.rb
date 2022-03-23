# frozen_string_literal: true

def solution(matrix)
  sum = 0
  matrix.transpose.each { |row| row.each.select { |room| room != 0 ? sum += room : break } }
  sum
end
