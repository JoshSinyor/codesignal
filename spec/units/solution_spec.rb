# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { input: %w[abc ded], output: ['*****', '*abc*', '*ded*', '*****'] }, # 01
  { input: ['a'], output: ['***', '*a*', '***'] }, # 02
  { input: ['aa', '**', 'zz'], output: ['****', '*aa*', '****', '*zz*', '****'] }, # 03
  { input: %w[abcde fghij klmno pqrst uvwxy], output: ['*******', '*abcde*', '*fghij*', '*klmno*', '*pqrst*', '*uvwxy*', '*******'] }, # 04
  { input: ['wzy**'], output: ['*******', '*wzy***', '*******'] } # 05
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each_with_index do |element, index|
      puts "Executing test #{index + 1}."
      expect(solution(element[:input])).to eq(element[:output])
    end
  end

  # it 'passes the supplied tests with 2 inputs and 1 output' do
  #   TEST_I_O.each do |element|
  #     expect(solution(element[:input1], element[:input2])).to eq(element[:output])
  #   end
  # end
end
