# frozen_string_literal: true

def solution(first_string, second_string)
  first_string = first_string.split(/[^a-zA-Z\-']/).delete_if(&:empty?)
  second_string = second_string.split(/[^a-zA-Z\-']/).delete_if(&:empty?)
  (first_string & second_string).count
end
