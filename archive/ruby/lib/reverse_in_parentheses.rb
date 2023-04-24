# frozen_string_literal: true

# Write a function that reverses characters in (possibly nested) parentheses in the input string.

# Input strings will always be well-formed with matching ()s.

def reverse_in_parentheses(str)
  str = str.dup # Not required in CodeSignal browser IDE
  true while str.sub!(/\((\w*)\)/) { Regexp.last_match(1).reverse }
  str
end

# Alternative solution with gsub!:

# def reverse_in_parentheses(str)
#   str = str.dup # Not required in CodeSignal browser IDE
#
#   str.gsub!(/\([a-z]*\)/) { |substring| substring.reverse.delete('()') } while str[/\([a-z]*\)/]
#   str
# end
