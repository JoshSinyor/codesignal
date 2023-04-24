# frozen_string_literal: true

# Given array of integers, remove each kth element from it.

def extract_each_kth(arr, nth)
  arr.reject.with_index { |_, ind| ((ind + 1) % nth).zero? }
end
