# frozen_string_literal: true

require 'alphabetic_shift'

ALPHABETIC_SHIFT_TEST_I_O = [
  { test: 1, input: 'crazy', output: 'dsbaz' }, # 01
  { test: 2, input: 'z', output: 'a' }, # 02
  { test: 3, input: 'aaaabbbccd', output: 'bbbbcccdde' }, # 03
  { test: 4, input: 'fuzzy', output: 'gvaaz' }, # 04
  { test: 5, input: 'codesignal', output: 'dpeftjhobm' } # 05
].freeze

describe 'alphabetic_shift' do
  it 'passes the supplied tests with 1 input and 1 output' do
    ALPHABETIC_SHIFT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(alphabetic_shift(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
