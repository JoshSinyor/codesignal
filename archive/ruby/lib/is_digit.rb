# frozen_string_literal: true

# Determine if the given character is a digit or not.

def digit?(sym)
  sym.match?(/\d/)
end

# Alternative solution using ternary operator:

# def digit?(sym)
#   sym =~ /\d/ ? true : false
# end
