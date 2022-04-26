# frozen_string_literal: true

def solution(up_speed, down_speed, desired_height)
  return 1 if up_speed > desired_height

  (desired_height - down_speed).fdiv(up_speed - down_speed).ceil
end

# Alternate looping method

# def solution(up_speed, down_speed, desired_height)
#   height = 0
#   days = 0

#   loop do
#     height += up_speed
#     days += 1
#     return days if height >= desired_height

#     height -= down_speed
#   end
# end
