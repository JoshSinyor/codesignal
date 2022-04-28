# frozen_string_literal: true

def solution(input_string)
  input_string.split('@')[-1]
end

# Alternative using regular expressions

# def solution(input_string)
#   input_string.reverse[/^[^@]*/].reverse
# end
