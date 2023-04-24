# frozen_string_literal: true

require 'is_mac48_address'

IS_MAC48_ADDRESS_TEST_I_O = [
  { test: 1, input: '00-1B-63-84-45-E6', output: true }, # 01
  { test: 2, input: 'Z1-1B-63-84-45-E6', output: false }, # 02
  { test: 3, input: 'not a MAC-48 address', output: false }, # 03
  { test: 4, input: 'FF-FF-FF-FF-FF-FF', output: true }, # 04
  { test: 5, input: '00-00-00-00-00-00', output: true }, # 05
  { test: 6, input: 'G0-00-00-00-00-00', output: false }, # 06
  { test: 7, input: '02-03-04-05-06-07-', output: false }, # 07
  { test: 8, input: '12-34-56-78-9A-BC', output: true }, # 08
  { test: 9, input: 'FF-FF-AB-CD-EA-BC', output: true }, # 09
  { test: 10, input: '12-34-56-78-9A-BG', output: false } # 10
].freeze

describe 'mac48_address?' do
  it 'passes the supplied tests with 1 input and 1 output' do
    IS_MAC48_ADDRESS_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(mac48_address?(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
