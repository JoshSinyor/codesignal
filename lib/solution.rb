# frozen_string_literal: true

def solution(input_array)
  (2..input_array.max + 1).each do |jump|
    return jump if input_array.select { |obstacle| (obstacle % jump).zero? }.empty?
  end
end

# Alternate solution using iterator

# def solution(input_array)
#   i = 2
#
#   loop do
#     output_array = []
#     input_array.each { |obstacle| output_array.push((obstacle % i).zero?) }
#     return i if output_array.all? { |output| output == false }
#
#     i += 1
#   end
# end
