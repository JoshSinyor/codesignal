# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { input: '(bar)', output: 'rab' }, # 01
  { input: 'foo(bar)baz', output: 'foorabbaz' }, # 02
  { input: 'foo(bar)baz(blim)', output: 'foorabbazmilb' }, # 03
  { input: 'foo(bar(baz))blim', output: 'foobazrabblim' }, # 04
  { input: '', output: '' }, # 05
  { input: '()', output: '' }, # 06
  { input: '(abc)d(efg)', output: 'cbadgfe' } # 07
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
