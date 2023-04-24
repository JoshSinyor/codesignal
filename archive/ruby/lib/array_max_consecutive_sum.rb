# frozen_string_literal: true

# Given array of integers, find the maximal possible sum of some of its k consecutive elements.

def array_max_consecutive_sum(arr, slc)
  fib = fibonacci(arr, [0])
  delete_before_slice(fib, slc)
end

private

def fibonacci(arr, fib)
  0.upto(arr.size - 1).each { |ind| fib[ind + 1] = fib[ind] + arr[ind] }
  fib
end

def delete_before_slice(fib, slc)
  0.upto(fib.size - slc - 1).map { |ind| fib[ind + slc] - fib[ind] }.max
end

# Alternative version with excessive branch condition size:

# def array_max_consecutive_sum(arr, slc)
#   fib = [0]
#   0.upto(arr.size - 1).each { |ind| fib[ind + 1] = fib[ind] + arr[ind] }
#   0.upto(arr.size - slc).map { |ind| fib[ind + slc] - fib[ind] }.max
# end

# Alternative, slower solution:

# def array_max_consecutive_sum(arr, slc)
#   arr.each_cons(slc).max_by(&:sum).sum
# end
