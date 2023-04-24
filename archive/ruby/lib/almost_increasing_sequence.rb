# frozen_string_literal: true

# Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by
# removing no more than one element from the array.

# NOTE: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. Sequence containing
# only one element is also considered to be strictly increasing.

def almost_increasing_sequence(arr)
  !as_greater_than_bs?(arr) && !more_than_1_removal?(arr)
end

private

def as_greater_than_bs?(arr)
  arr.each_cons(2).count { |a, b| a >= b } > 1
end

def more_than_1_removal?(arr)
  arr.each_cons(3).count do |a, b, c|
    (a >= b && a >= c) || (a >= b && b >= c) || (a >= c && b >= c)
  end > 1
end

# Alternative non-extracted solution:

# def almost_increasing_sequence(arr)
#   if arr.each_cons(2).count { |a, b| a >= b } > 1
#     false
#   else
#     arr.each_cons(3).count { |a, b, c| (a >= b && a >= c) || (a >= b && b >= c) || (a >= c && b >= c) } <= 1
#   end
# end

# Alternative slower solution:

# def solution(arr)
#   arr = Array.new(arr.size).map { arr.dup }
#   (0...arr.size).each { |element| arr[element].delete_at(element) }
#   arr.any? { |set| set == set.sort && set == set.uniq }
# end

# Alternative slower solution:

# def almost_increasing_sequence(arr)
#   arr.combination(arr.size - 1).any? { |set| set == set.sort && set == set.uniq }
# end
