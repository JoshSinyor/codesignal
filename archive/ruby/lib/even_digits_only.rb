# frozen_string_literal: true

# Check if all digits of the given integer are even.

def even_digits_only?(num)
  num.digits.all?(&:even?)
end
