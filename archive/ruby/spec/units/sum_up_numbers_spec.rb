# frozen_string_literal: true

require 'sum_up_numbers'

SUM_UP_NUMBERS_TEST_I_O = [
  { test: 1, input: '2 apples, 12 oranges', output: 14 }, # 01
  { test: 2, input: '123450', output: 123_450 }, # 02
  { test: 3, input: 'Your payment method is invalid', output: 0 }, # 03
  { test: 4, input: 'no digits at all', output: 0 }, # 04
  { test: 5, input: 'there are some (12) digits 5566 in this 770 string 239', output: 6587 }, # 05
  { test: 6, input: '42+781', output: 823 }, # 06
  { test: 7, input: 'abc abc 4 abc 0 abc', output: 4 }, # 07
  { test: 8, input: 'abcdefghijklmnopqrstuvwxyz1AbCdEfGhIjKlMnOpqrstuvwxyz23,74 -', output: 98 } # 08
].freeze

describe 'sum_up_numbers' do
  it 'passes the supplied tests with 1 input and 1 output' do
    SUM_UP_NUMBERS_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(sum_up_numbers(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
