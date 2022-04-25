# frozen_string_literal: true

def solution(input_number)
  input_number.digits.all?(&:even?)
end
