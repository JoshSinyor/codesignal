# frozen_string_literal: true

# Given an array of strings, return another array containing all of its longest strings.

def all_longest_strings(arr)
  arr.select { |str| str.length == arr.map(&:length).max }
end
