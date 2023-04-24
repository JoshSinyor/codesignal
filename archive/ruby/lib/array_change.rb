# frozen_string_literal: true

# You are given an array of integers. On each move you are allowed to increase exactly one of its element by one. Find
# the minimal number of moves required to obtain a strictly increasing sequence from the input.

def array_change(arr)
  org = arr.sum
  0.upto(arr.size - 2) { |i| arr[i + 1] = arr[i] + 1 if arr[i] >= arr[i + 1] }
  arr.sum - org
end

# Alternative solution using each_index:

# def array_change(arr)
#   org = arr.sum
#   arr[1..].each_index { |i| arr[i + 1] = arr[i] + 1  if arr[i] >= arr[i + 1]  }
#   arr.sum - org
# end

# Alternative solution using incrementing variable:

# def array_change(arr)
#   mvs = 0

#   arr[1..].each_index do |i|
#     next if arr[i + 1] > arr[i]

#     mov = (arr[i] - arr[i + 1]) + 1

#     arr[i + 1] += mov
#     mvs += mov
#   end

#   mvs
# end
