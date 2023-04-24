# frozen_string_literal: true

# You found two items in a treasure chest! The first item weighs weight1 and is worth value1, and the second item weighs
# weight2 and is worth value2. What is the total maximum value of the items you can take with you, assuming that your
# max weight capacity is maxW and you can't come back for the items later?

# Note that there are only two items and you can't bring more than one item of each type, i.e. you can't take two first
# items or two second items.

def knapsack_light(val1, wei1, val2, wei2, max_w)
  if max_w >= (wei1 + wei2)
    val1 + val2
  else
    arr = [0]
    arr << val1 if wei1 <= max_w
    arr << val2 if wei2 <= max_w
    arr.max
  end
end

# Alternative nested if/else solution:

# def knapsack_light(val1, wei1, val2, wei2, max_w)
#   if wei1 > max_w && wei2 > max_w
#     0
#   elsif wei1 + wei2 <= max_w
#     val1 + val2
#   elsif wei1 <= max_w && wei2 > max_w
#     val1
#   elsif wei2 <= max_w && wei1 > max_w
#     val2
#   else
#     [val1, val2].max
#   end
# end
