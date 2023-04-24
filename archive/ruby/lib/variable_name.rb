# frozen_string_literal: true

# Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.

# Check if the given string is a correct variable name.

def variable_name(str)
  str.match?(/^[^\W\d]\w*+$/)
end
