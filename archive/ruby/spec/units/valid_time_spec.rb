# frozen_string_literal: true

require 'valid_time'

VALID_TIME_TEST_I_O = [
  { test: 1, input: '13:58', output: true }, # 01
  { test: 2, input: '25:51', output: false }, # 02
  { test: 3, input: '02:76', output: false }, # 03
  { test: 4, input: '24:00', output: false }, # 04
  { test: 5, input: '02:61', output: false }, # 05
  { test: 6, input: '27:00', output: false }, # 06
  { test: 7, input: '19:66', output: false }, # 07
  { test: 8, input: '12:31', output: true }, # 08
  { test: 9, input: '25:73', output: false }, # 09
  { test: 10, input: '09:56', output: true }, # 10
  { test: 11, input: '03:29', output: true } # 11
].freeze

describe 'valid_time' do
  it 'passes the supplied tests with 1 input and 1 output' do
    VALID_TIME_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(valid_time(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
