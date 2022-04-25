# frozen_string_literal: true

def solution(points, first_number)
  (first_number + points / 2) % points
end
