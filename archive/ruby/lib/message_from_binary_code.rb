# frozen_string_literal: true

# You are taking part in an Escape Room challenge designed specifically for programmers. In your efforts to find a clue,
# you've found a binary code written on the wall behind a vase, and realized that it must be an encrypted message. After
# some thought, your first guess is that each consecutive 8 bits of the code stand for the character with the
# corresponding extended ASCII code.

# Assuming that your hunch is correct, decode the message.

def message_from_binary_code(*bin)
  bin.pack('B*')
end

# Alternative solution using summation of bits in base-2 (binary):

# def message_from_binary_code(bin)
#   bin.chars.each_slice(8).map { |slc| slc.join.to_i(2).chr }.join
# end
