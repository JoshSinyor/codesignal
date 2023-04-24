# frozen_string_literal: true

require 'add_border'

ADD_BORDER_TEST_I_O = [
  { test: 1, input: %w[abc ded], output: ['*****', '*abc*', '*ded*', '*****'] }, # 01
  { test: 2, input: ['a'], output: ['***', '*a*', '***'] }, # 02
  { test: 3, input: ['aa', '**', 'zz'], output: ['****', '*aa*', '****', '*zz*', '****'] }, # 03
  { test: 4, input: %w[abcde fghij klmno pqrst uvwxy], output: ['*******',
                                                                '*abcde*',
                                                                '*fghij*',
                                                                '*klmno*',
                                                                '*pqrst*',
                                                                '*uvwxy*',
                                                                '*******'] }, # 04
  { test: 5, input: ['wzy**'], output: ['*******', '*wzy***', '*******'] } # 05
].freeze

describe 'add_border' do
  it 'passes the supplied tests with 1 input and 1 output' do
    ADD_BORDER_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(add_border(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
