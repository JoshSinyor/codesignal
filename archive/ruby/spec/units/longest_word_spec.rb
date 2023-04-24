# frozen_string_literal: true

require 'longest_word'

LONGEST_WORD_TEST_I_O = [
  { test: 1, input: 'Ready, steady, go!', output: 'steady' }, # 01
  { test: 2, input: 'Ready[[[, steady, go!', output: 'steady' }, # 02
  { test: 3, input: 'ABCd', output: 'ABCd' }, # 03
  { test: 4, input: 'To be or not to be', output: 'not' }, # 04
  { test: 5, input: 'You are the best!!!!!!!!!!!! CodeFighter ever!', output: 'CodeFighter' } # 05
].freeze

describe 'longest_word' do
  it 'passes the supplied tests with 1 input and 1 output' do
    LONGEST_WORD_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(longest_word(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
