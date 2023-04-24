# frozen_string_literal: true

# Ratiorg got statues of different sizes as a present from CodeMaster for his birthday, each statue having an
# non-negative integer size. Since he likes to make things perfect, he wants to arrange them from smallest to largest
# so that each statue will be bigger than the previous one exactly by 1. He may need some additional statues to be able
# to accomplish that. Help him figure out the minimum number of additional statues needed.

def make_array_consecutive_two(arr)
  arr.max - arr.min - arr.size + 1
end

# Alternative solution using range:

# def make_array_consecutive_two(arr)
#   (arr.min..arr.max).size - arr.size
# end
