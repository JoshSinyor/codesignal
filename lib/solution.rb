# frozen_string_literal: true

def solution(first_array, second_array)
  first_array.sort == second_array.sort and first_array.each_with_index.count do |instance, index|
    second_array[index] != instance
  end < 3
end

# Alternative solution

# def solution(first_array, second_array)
#   return true if first_array == second_array
#   return false if first_array.sort != second_array.sort
#
#   parse_array(first_array, second_array)
# end
#
# private
#
# def parse_array(first_array, second_array)
#   second_array.each_with_index do |element, index|
#     next if element == first_array[index]
#
#     instances = second_array.each_index.select { |instance| second_array[instance] == first_array[index] }
#
#     instances.each do |instance_index|
#       third_array = second_array.dup
#       third_array[index] = first_array[index]
#       third_array[instance_index] = element
#
#       return true if first_array == third_array
#     end
#
#     return false
#   end
# end
