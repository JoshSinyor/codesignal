# frozen_string_literal: true

require 'add'

ADD_TEST_I_O = [
  { test: 1, input1: 1, input2: 2, output: 3 }, # 01
  { test: 2, input1: 0, input2: 1000, output: 1000 }, # 02
  { test: 3, input1: 2, input2: -39, output: -37 }, # 03
  { test: 4, input1: 99, input2: 100, output: 199 }, # 04
  { test: 5, input1: -100, input2: 100, output: 0 }, # 05
  { test: 6, input1: -1000, input2: -1000, output: -2000 } # 06
].freeze

describe 'add' do
  it 'passes the supplied tests with 2 inputs and 1 output' do
    ADD_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(add(element[:input1], element[:input2])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
