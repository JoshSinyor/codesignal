# frozen_string_literal: true

# You have deposited a specific amount of money into your bank account. Each year your balance increases at the same
# growth rate. With the assumption that you don't make any additional deposits, find out how long it would take for your
# balance to pass a specific threshold.

def deposit_profit(dep, rte, thr)
  Math.log((thr.to_f / dep), 1 + (rte.to_f / 100)).ceil
end

# Alternative, insufficiently fast iterative solution:

# def dep_profit(dep, rte, thr)
#   i = 0

#   until dep >= thr
#     dep += dep * rte / 100
#     i += 1
#   end

#   i
# end
