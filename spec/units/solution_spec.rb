# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: 'crazy', output: 'dsbaz' }, # 01
  { test: 2, input: 'z', output: 'a' }, # 02
  { test: 3, input: 'aaaabbbccd', output: 'bbbbcccdde' }, # 03
  { test: 4, input: 'fuzzy', output: 'gvaaz' }, # 04
  { test: 5, input: 'codesignal', output: 'dpeftjhobm' } # 05
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
