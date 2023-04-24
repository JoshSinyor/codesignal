# frozen_string_literal: true

# A string is said to be beautiful if each letter in the string appears at most as many times as the previous letter
# in the alphabet within the string; ie: b occurs no more times than a; c occurs no more times than b; etc. Note that
# letter a has no previous letter.

# Given a string, check whether it is beautiful.

def beautiful_string?(str)
  chrs = ('a'..'z').map { |chr| str.count(chr) }
  chrs.reverse == chrs.sort
end
