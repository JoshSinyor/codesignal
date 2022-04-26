# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: 'cabca', output: 3 }, # 01
  { test: 2, input: 'aba', output: 2 }, # 02
  { test: 3, input: 'ccccccccccc', output: 1 }, # 03
  { test: 4, input: 'bcaba', output: 3 }, # 04
  { test: 5, input: 'codesignal', output: 10 } # 05
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(solution(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
