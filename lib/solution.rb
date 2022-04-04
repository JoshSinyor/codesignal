# frozen_string_literal: true

# require 'ipaddr' Required by CodeSignal

def solution(input_string)
  IPAddr.new(input_string).ipv4?
rescue ArgumentError
  false
end

# Alternate solution using only regex

# def solution(input_string)
#   input_string =~ /^((25[0-5]|(2[0-4]|1[0-9]|[1-9]|)[0-9])(\.(?!$)|$)){4}$/ ? true : false
# end

# Alternate solution with more legible regex

# def solution(input_string)
#   return false unless input_string =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/
#
#   input_string = input_string.split('.')
#
#   input_string.each do |range|
#     return false if range != range.to_i.to_s
#     return false if range.to_i.negative? || range.to_i > 255
#   end
#
#   true
# end
