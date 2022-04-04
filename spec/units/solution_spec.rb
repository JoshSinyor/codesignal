# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: '172.16.254.1', output: true }, # 01
  { test: 2, input: '172.316.254.1', output: false }, # 02
  { test: 3, input: '.254.255.0', output: false }, # 03
  { test: 4, input: '1.1.1.1a', output: false }, # 04
  { test: 5, input: '1', output: false }, # 05
  { test: 6, input: '0.254.255.0', output: true }, # 06
  { test: 7, input: '1.23.256.255.', output: false }, # 07
  { test: 8, input: '1.23.256..', output: false }, # 08
  { test: 9, input: '0..1.0', output: false }, # 09
  { test: 10, input: '64.233.161.00', output: false }, # 10
  { test: 11, input: '64.00.161.131', output: false }, # 11
  { test: 12, input: '01.233.161.131', output: false }, # 12
  { test: 13, input: '35..36.9.9.0', output: false }, # 13
  { test: 14, input: '1.1.1.1.1', output: false }, # 14
  { test: 15, input: '1.256.1.1', output: false }, # 15
  { test: 16, input: 'a0.1.1.1', output: false }, # 16
  { test: 17, input: '0.1.1.256', output: false }, # 17
  { test: 18, input: '129380129831213981.255.255.255', output: false }, # 18
  { test: 19, input: '255.255.255.255abcdekjhf', output: false }, # 19
  { test: 20, input: '7283728', output: false }, # 20
  { test: 21, input: '0..1.0.0', output: false }  # 21
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      puts "Executing test #{element[:test]}..."
      expect(solution(element[:input])).to eq(element[:output])
      puts 'Passed.'
    end
  end
end
