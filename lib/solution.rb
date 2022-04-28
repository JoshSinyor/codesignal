# frozen_string_literal: true

def solution(value1, weight1, value2, weight2, max_weight)
  if weight1 > max_weight && weight2 > max_weight
    0
  elsif weight1 + weight2 <= max_weight
    value1 + value2
  elsif weight1 <= max_weight && weight2 > max_weight
    value1
  elsif weight2 <= max_weight && weight1 > max_weight
    value2
  else
    [value1, value2].max
  end
end

# Alternate solution

# def solution(value1, weight1, value2, weight2, max_weight)
#   return 0 if weight1 > max_weight && weight2 > max_weight
#   return value1 + value2 if weight1 + weight2 <= max_weight
#   return value1 if weight1 <= max_weight && weight2 > max_weight
#   return value2 if weight1 > max_weight && weight2 <= max_weight

#   [value1, value2].max
# end
