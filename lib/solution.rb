# frozen_string_literal: true

def solution(input_string)
  input_string = input_string.dup # Not required on CodeSignal browser IDE

  true while input_string.sub!(/\((\w*)\)/) { Regexp.last_match(1).reverse }
  input_string
end

# Alternative solution

# def solution(input_string)
#   input_string = input_string.dup # Not required on CodeSignal browser IDE
#
#   input_string.gsub!(/\([a-z]*\)/) { |substring| substring.reverse.delete('()') } while input_string[/\([a-z]*\)/]
#   input_string
# end
