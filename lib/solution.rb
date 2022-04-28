# frozen_string_literal: true

def solution(input_string)
  letters = ('a'..'z').map { |letter| input_string.count(letter) }
  letters.reverse == letters.sort
end

# Alternate solution comparing pairs

# def solution(input_string)
#   ('a'..'z').map { |letter| input_string.count(letter) }.each_cons(2).all? { |first, second| first >= second }
# end
