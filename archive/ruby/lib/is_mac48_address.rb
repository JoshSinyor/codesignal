# frozen_string_literal: true

# A media access control address (MAC address) is a unique identifier assigned to network interfaces for communications
# on the physical network segment.

# The standard (IEEE 802) format for printing MAC-48 addresses in human-friendly form is six groups of two hexadecimal
# digits (0 to 9 or A to F), separated by hyphens (e.g. 01-23-45-67-89-AB).

# Your task is to check by given string inputString whether it corresponds to MAC-48 address or not.

def mac48_address?(str)
  str.match?(/^([A-F0-9]{2}-){5}[A-F0-9]{2}$/)
end

# Alternative solution using ternary operator:

# def mac48_address?(str)
#   str =~ /^([A-F0-9]{2}-){5}[A-F0-9]{2}$/ ? true : false
# end
