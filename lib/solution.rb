# frozen_string_literal: true

def solution(input_string)
  input_string.tr('a-yz', 'b-za')
end

# Alternative solution using next method

# def solution(input_string)
#   input_string.chars.map { |letter| letter == 'z' ? 'a' : letter.next }.join
# end
