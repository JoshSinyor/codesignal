# frozen_string_literal: true

# Given a string, output its longest prefix which contains only digits.

def longest_digits_prefix(str)
  str[/^\d*/]
end
