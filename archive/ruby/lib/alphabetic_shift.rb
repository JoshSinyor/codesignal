# frozen_string_literal: true

# Given a string, your task is to replace each of its characters by the next one in the English alphabet; i.e. replace a
# with b, replace b with c, etc (z would be replaced by a).

def alphabetic_shift(str)
  str.tr('a-yz', 'b-za')
end

# Alternative solution using next method:

# def alphabetic_shift(str)
#   str.chars.map { |chr| chr == 'z' ? 'a' : chr.next }.join
# end
