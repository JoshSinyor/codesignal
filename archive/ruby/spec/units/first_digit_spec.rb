# frozen_string_literal: true

require 'first_digit'

FIRST_DIGIT_TEST_I_O = [
  { test: 1, input: 'var_1__Int', output: '1' }, # 01
  { test: 2, input: 'q2q-q', output: '2' }, # 02
  { test: 3, input: '0ss', output: '0' }, # 03
  { test: 4, input: '_Aas_23', output: '2' }, # 04
  { test: 5, input: 'a a_933', output: '9' }, # 05
  { test: 6, input: 'ok0', output: '0' } # 06
].freeze

describe 'first_digit' do
  it 'passes the supplied tests with 1 input and 1 output' do
    FIRST_DIGIT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(first_digit(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
