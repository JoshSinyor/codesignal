# frozen_string_literal: true

def solution(input_string)
  input_string.split('').uniq.map { |char| input_string.count(char) }.count(&:odd?) < 2
end

# Alternative solution

# def solution(input_string)
#   ('a'..'z').map { |char| input_string.count(char).odd? }.count(true) < 2
# end
