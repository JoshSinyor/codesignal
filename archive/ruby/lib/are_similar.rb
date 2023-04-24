# frozen_string_literal: true

# Two arrays are called similar if one can be obtained from another by swapping at most one pair of elements in one of
# the arrays.

# Given two arrays a and b, check whether they are similar.

def similar?(arr1, arr2)
  arr1.sort == arr2.sort && arr1.each_with_index.count { |ele, ind| arr2[ind] != ele } < 3
end
