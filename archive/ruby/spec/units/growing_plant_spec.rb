# frozen_string_literal: true

require 'growing_plant'

GROWING_PLANT_TEST_I_O = [
  { test: 1, input1: 100, input2: 10, input3: 910, output: 10 }, # 01
  { test: 2, input1: 10, input2: 9, input3: 4, output: 1 }, # 02
  { test: 3, input1: 5, input2: 2, input3: 7, output: 2 }, # 03
  { test: 4, input1: 7, input2: 3, input3: 443, output: 110 }, # 04
  { test: 5, input1: 6, input2: 5, input3: 10, output: 5 } # 05
].freeze

describe 'growing_plant' do
  it 'passes the supplied tests with 3 inputs and 1 output' do
    GROWING_PLANT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(growing_plant(element[:input1], element[:input2], element[:input3])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
