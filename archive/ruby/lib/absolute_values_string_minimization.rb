# frozen_string_literal: true

# Given a sorted array of integers a, your task is to determine which element of a is closest to all other values of a.
# In other words, find the element x in a, which minimizes the following sum:

# abs(a[0] - x) + abs(a[1] - x) + ... + abs(a[a.length - 1] - x)
# (where abs denotes the absolute value)

# If there are several possible answers, output the smallest one.

def absolute_values_string_minimization(arr)
  arr[(arr.length - 1).fdiv(2)].floor
end

# Alternative explicit solution:

# def absolute_values_string_minimization(arr)
#   med = (arr[(arr.length - 1) / 2] + arr[arr.length / 2]) / 2.0
#   arr.min_by { |ele| (med - ele).abs }
# end
