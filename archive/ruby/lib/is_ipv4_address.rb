# frozen_string_literal: true

# An IP address is a numerical label assigned to each device (e.g., computer, printer) participating in a computer
# network that uses the Internet Protocol for communication. There are two versions of the Internet protocol, and thus
# two versions of addresses. One of them is the IPv4 address.

# Given a string, find out if it satisfies the IPv4 address naming rules.

# require 'ipaddr' # Required by CodeSignal

def ipv4_address?(str)
  IPAddr.new(str).ipv4?
rescue ArgumentError
  false
end

# Alternative solution using only regex:

# def ipv4_address?(str)
#   str =~ /^((25[0-5]|(2[0-4]|1[0-9]|[1-9]|)[0-9])(\.(?!$)|$)){4}$/ ? true : false
# end

# Alternative solution with more legible regex:

# def ipv4_address?(str)
#   return false unless str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/
#
#   str = str.split('.')
#
#   str.each do |range|
#     return false if range != range.to_i.to_s
#     return false if range.to_i.negative? || range.to_i > 255
#   end
#
#   true
# end
