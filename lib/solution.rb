# frozen_string_literal: true

def solution(s1, s2)
  sum = 0
  ('a'..'z').each { |character| sum += [s1.split('').count(character), s2.split('').count(character)].min }
  sum
end
