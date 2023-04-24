# frozen_string_literal: true

require 'all_longest_strings'

ALL_LONGEST_STRINGS_TEST_I_O = [
  { test: 1, input: %w[aba aa ad vcd aba], output: %w[aba vcd aba] }, # 01
  { test: 2, input: %w[aa], output: %w[aa] }, # 02
  { test: 3, input: %w[abc eeee abcd dcd], output: %w[eeee abcd] }, # 03
  { test: 4, input: %w[a abc cbd zzzzzz a abcdef asasa aaaaaa], output: %w[zzzzzz abcdef aaaaaa] }, # 04
  { test: 5, input: %w[enyky benyky yely varennyky], output: %w[varennyky] }, # 05
  { test: 6, input: %w[abacaba abacab abac xxxxxx], output: %w[abacaba] }, # 06
  { test: 7, input: %w[young yooooooung hot or not come on fire water watermelon],
    output: %w[yooooooung watermelon] }, # 07
  { test: 8, input: %w[onsfnib aokbcwthc jrfcw], output: %w[aokbcwthc] }, # 08
  { test: 9, input: %w[lbgwyqkry], output: %w[lbgwyqkry] }, # 09
  { test: 10, input: %w[i], output: %w[i] } # 10
].freeze

describe 'all_longest_strings' do
  it 'passes the supplied tests with 1 input and 1 output' do
    ALL_LONGEST_STRINGS_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(all_longest_strings(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
