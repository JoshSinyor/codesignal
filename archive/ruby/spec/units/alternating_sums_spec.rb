# frozen_string_literal: true

require 'alternating_sums'

ALTERNATING_SUMS_TEST_I_O = [
  { test: 1, input: [50, 60, 60, 45, 70], output: [180, 105] }, # 01
  { test: 2, input: [100, 50], output: [100, 50] }, # 02
  { test: 3, input: [80], output: [80, 0] }, # 03
  { test: 4, input: [100, 50, 50, 100], output: [150, 150] }, # 04
  { test: 5, input: [100, 51, 50, 100], output: [150, 151] } # 05
].freeze

describe 'alternating_sums' do
  it 'passes the supplied tests with 1 input and 1 output' do
    ALTERNATING_SUMS_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(alternating_sums(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
