# frozen_string_literal: true

# Caring for a plant can be hard work, but since you tend to it regularly, you have a plant that grows consistently.
# Each day, its height increases by a fixed amount represented by the integer upSpeed. But due to lack of sunlight, the
# plant decreases in height every night, by an amount represented by downSpeed.

# Since you grew the plant from a seed, it started at height 0 initially. Given an integer desiredHeight, your task is
# to find how many days it'll take for the plant to reach this height.

def growing_plant(u_spd, d_spd, dht)
  return 1 if u_spd > dht

  (dht - d_spd).fdiv(u_spd - d_spd).ceil
end

# Alternative looping solution:

# def growing_plant(u_spd, d_spd, dht)
#   height = 0
#   days = 0

#   loop do
#     height += u_spd
#     days += 1
#     return days if height >= dht

#     height -= d_spd
#   end
# end
