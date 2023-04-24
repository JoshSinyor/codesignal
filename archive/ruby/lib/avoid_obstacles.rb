# frozen_string_literal: true

# You are given an array of integers representing coordinates of obstacles situated on a straight line.

# Assume that you are jumping from the point with coordinate 0 to the right. You are allowed only to make jumps of the
# same length represented by some integer.

# Find the minimal length of the jump enough to avoid all the obstacles.

def avoid_obstacles(arr)
  2.upto(arr.max + 1) { |jmp| return jmp if arr.select { |obs| (obs % jmp).zero? }.empty? }
end

# Alternative solution using iterator:

# def avoid_obstacles(iarr)
#   i = 2

#   loop do
#     oarr = []
#     iarr.each { |obs| oarr.push((obs % i).zero?) }
#     return i if oarr.all? { |output| output == false }

#     i += 1
#   end
# end
